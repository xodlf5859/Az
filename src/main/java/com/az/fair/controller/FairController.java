package com.az.fair.controller;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.az.common.Criteria;
import com.az.common.PageMaker;
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
	public ModelAndView selectFair(FairVO fairVO, ModelAndView mnv,Criteria cri) throws Exception{
		
		mnv.setViewName("fair/Fair");

		cri.setPerPageNum(9);
		PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(fairService.countFair());
	    
		
		
		List<FairVO> fairList = fairService.selectFair(fairVO,cri);
		
		mnv.addObject("fairList", fairList);
		mnv.addObject("pageMaker", pageMaker);
		
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
	
	//상세보기
	@GetMapping("/list/{boardIdx}")
	public ModelAndView detailFair(FairVO fairVO, ModelAndView mnv,@PathVariable int boardIdx) throws Exception{
		
		fairVO = fairService.detailFair(fairVO);
		
		//엔터 했을때 한칸 띄어쓰기
		fairVO.setBoardContent(fairVO.getBoardContent().replace("\r\n", "<br>"));
		
		mnv.setViewName("fair/FairDetail");
		mnv.addObject("fairVO",fairVO);
		
		return mnv;
	}
	
	//이미지 띄우기 하는중
	@GetMapping("/image/{fileName}")
	@ResponseBody
	public Resource imageView(@PathVariable String fileName) throws MalformedURLException{
		
		
		return new UrlResource(fileName);
	}
	
	
	
}
