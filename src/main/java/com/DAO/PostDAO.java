package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
			e.printStackTrace();
		}
			
		return f;
	}
	
	public List<Post>getData(int id){
		List<Post> list = new ArrayList<Post>();
		Post post = null;
		try {
			String q = "select * from post where uid=? order by id DESC";
			PreparedStatement ps = conn.prepareStatement(q);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				post = new Post();
				post.setId(rs.getInt(1));
				post.setTitle(rs.getString(2));
				post.setContent(rs.getString(3));
				post.setpDate(rs.getTimestamp(4));
				list.add(post);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
