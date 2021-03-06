package test;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.HashSet;
import java.util.Random;

public class SqlDumpTest {

	public static void main(String[] args) {
		String path =".\\data\\dump.sql";
		File file = new File(path);
		try {
			if(file.exists()) {
				String txt = dump();
				BufferedWriter writer = new BufferedWriter(new FileWriter(file));
				writer.write(txt);
				writer.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("완료");
	}

	private static String dump() {
		String txt ="drop sequence seqNum;\r\n"
				+ "create sequence seqNum;\r\n"
				+ "drop table tblMemo;\r\n"
				+ "create table tblMemo\r\n"
				+ "(   \r\n"
				+ "    seq number(3),\r\n"
				+ "    name varchar2(30),\r\n"
				+ "    memo varchar2(1000) not null,\r\n"
				+ "    regdate date not null,\r\n"
				+ "    -- 제약사항 \r\n"
				+ "    CONSTRAINT tblmemo_seq_pk PRIMARY KEY(seq),\r\n"
				+ "    CONSTRAINT tblmemo_name_uq UNIQUE(name)\r\n"
				+ ");\r\n"	;
		Random rnd = new Random();
		HashSet<String> setName = new HashSet<String>();
		String[] firstName = {"황","우","고","강","김","박","이","최","백","추","남궁",null};
		String[] lastName = {"현우","유선","연재","권우","태우","우기","큐엘","종원","태원","경태","수박","포도"};
		String[] memo = {"메모할것","운동할것","공부할것","데이트 할것","밥먹을것","잠잘것"};
		String[] year = {"2019","2020","2021"};
		for(int i=0 ;i<100 ; i++) {
			String name = "'"+firstName[rnd.nextInt(firstName.length)]+lastName[rnd.nextInt(lastName.length)]+"'"+",";
			if(name.substring(1,5).equals("null")) {
				txt+= "insert into tblMemo(seq,name,memo,regdate) values ("	;
				txt+="seqNum.nextVal"+",";
				txt+=null+",";
			}else if(setName.add(name)) {
			txt+= "insert into tblMemo(seq,name,memo,regdate) values ("	;
			txt+="seqNum.nextVal"+",";
				txt+=name;
			}else {
				i--;
				continue;
			}
			txt+="'"+memo[rnd.nextInt(memo.length)]+"'"+",";
			txt+="'"+year[rnd.nextInt(year.length)]+"-"+(rnd.nextInt(12)+1)+"-"+(rnd.nextInt(31)+1)+"'"+");\r\n";
		}
		txt+="select * from tblMemo";
		return txt;
	}

}
