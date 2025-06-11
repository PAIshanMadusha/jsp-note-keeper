package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.User.Post;

public class PostDAO {
	
	private Connection conn;

	public PostDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addNotes(String title, String content, int uid) {
		boolean f = false;
		try {
			
			String q = "insert into post(title, content, uid) values(?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(q);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setInt(3, uid);
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
		}catch(Exception e) {
			
		}
			
		return f;
	}
	
}
