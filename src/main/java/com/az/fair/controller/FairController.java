package com.az.fair.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.az.fair.service.FairService;
import com.az.fair.vo.FairVO;
import com.az.file.service.FileService;
import com.az.file.vo.FileVO;

@Controller
@RequestMapping("/fair")
public class FairController {

	@Autowired
	FairService fairService;
	
	@Autowired
	FileService fileService;
	
	@Value("${spring.servlet.multipart.location}")
	private String uploadPath;
	
	//조회 
	@GetMapping("/list")
	public ModelAndView selectFair(FairVO fairVO, ModelAndView mnv) throws Exception{
		
		mnv.setViewName("fair/Fair");
		
		List<FairVO> fairList = fairService.selectFair(fairVO);
		
		mnv.addObject("fairList", fairList);
		
		return mnv;
	}
	@RequestMapping("/regist")
	public String fairRegistForm() throws Exception{
		return "fair/FairRegist";
	}
	
	
	@PostMapping("/list")
	public String saveFile(
			@RequestParam("boardTitle") String boardTitle,
							@RequestParam("boardContent") String boardContent,
							@RequestParam(value="file", required = false) List<MultipartFile> file,
							HttpServletRequest req) throws IOException,Exception{
		
		//UUID
		String uuid = UUID.randomUUID().toString();

		FileVO savefile = new FileVO();
		
		FairVO fairVO = new FairVO();
		
		
		fairVO.setBoardTitle(boardTitle);
		fairVO.setBoardContent(boardContent);
		
		
		File folder = new File(uploadPath);
		
		//파일 정보를 DB에 등록
		if(file != null) {
			
			int boardIdx = fileService.autoIncrementValue();
			fairService.insertFair(fairVO);
			
			for(int i=0; i<file.size(); i++) {
				
				//저장 파일명
				String saveName = uuid+"@"+file.get(i).getOriginalFilename();
				
				savefile.setFileName(saveName);
				savefile.setFileOriginalName(file.get(i).getOriginalFilename());
				savefile.setFileType(file.get(i).getContentType());
				savefile.setFileUploadPath(uploadPath);
				savefile.setBoardIdx(boardIdx);
				
				
				fileService.insertFile(savefile);
				
				
		        if(!folder.exists()){
		            folder.mkdirs(); //디렉토리가 존재하지 않는다면 생성
		        }


				file.get(i).transferTo(new File(uploadPath,savefile.getFileName()));
				
			
			}
		}else {
			fairService.insertFair(fairVO);
		}
		
		
		
		return "fair/Fair";
	}
	
}
