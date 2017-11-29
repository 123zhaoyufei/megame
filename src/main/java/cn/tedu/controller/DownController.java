package cn.tedu.controller;

import cn.tedu.pojo.Game;
import cn.tedu.service.GameService;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;


@Controller
public class DownController {
    @Autowired
    private GameService gameService;
    @RequestMapping("/down")
    public String download() throws IOException {
        Workbook wb=new XSSFWorkbook();


        Sheet st = wb.createSheet("sheet1");
        List<Game> list=gameService.findAll();
        Row r1 = st.createRow(0);
        r1.createCell(0).setCellValue("排名");
        r1.createCell(1).setCellValue("游戏名称");
        r1.createCell(2).setCellValue("游戏类型");
        r1.createCell(3).setCellValue("评分");

        for(int i=0;i<list.size();i++){
            Row row = st.createRow(i+1);
            Game game=list.get(i);
            row.createCell(0).setCellValue(i+1);
            row.createCell(1).setCellValue(game.getgName());
            if(game.getgClass()==0){
                row.createCell(2).setCellValue("网络游戏");
            }else{
                row.createCell(2).setCellValue("单机游戏");
            }
            row.createCell(3).setCellValue(game.getgScore());
        }


        FileOutputStream fos=new FileOutputStream("D://排行榜.xlsx");
        wb.write(fos);
        fos.close();
        return "redirect:/torank";
    }
}
