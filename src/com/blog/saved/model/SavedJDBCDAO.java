package com.blog.saved.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SavedJDBCDAO implements SavedDAOInterface{
	String driverClass = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "PETBOX";
	String password = "123456";
	
	private static final String insert = "insert into saved(saved_post_id, member_id, post_id) values('SID' || LPAD(SAVED_ID_SEQ.NEXTVAL, 5, '0'), ?, ?)";
	private static final String delete = "delete from saved where saved_post_id = ?";
	private static final String get_one = "select * from saved where saved_post_id = ?";
	private static final String get_all = "select * from saved order by saved_post_id desc";
	private static final String get_by_member_id = "select * from saved where member_id = ?";
	private static final String delete_by_post_id = "delete from saved where post_id = ? and member_id = ?";
	private static final String getByPostId="select * from saved where post_id = ?"; 
	
	@Override
	public void insert(SavedVO savedVO) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.prepareStatement(insert);
			
//			stmt.setString(1, savedVO.getSaved_post_id());
			stmt.setString(1, savedVO.getMember_id());
			stmt.setString(2, savedVO.getPost_id());
			stmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}	
	}

	@Override
	public void delete(String saved_post_id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			conn.setAutoCommit(false);
			stmt = conn.prepareStatement(delete);
			
			stmt.setString(1, saved_post_id);
			stmt.executeUpdate();
			
			conn.commit();
			conn.setAutoCommit(true);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			if(conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();
			}	
		} finally {
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}		
	}

	@Override
	public SavedVO findByPrimaryKey(String saved_post_id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		SavedVO savedVO = null;
		
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.prepareStatement(get_one);
			
			stmt.setString(1, saved_post_id);
			rs = stmt.executeQuery();
			while(rs.next()) {
				savedVO = new SavedVO();
				savedVO.setSaved_post_id(rs.getString("saved_post_id"));
				savedVO.setMember_id(rs.getString("member_id"));
				savedVO.setPost_id(rs.getString("post_id"));
				savedVO.setCreate_time(rs.getTimestamp("create_time"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}		
		return savedVO;
	}
	
	@Override
	public List<SavedVO> getAll() {
		List<SavedVO> list = new ArrayList<SavedVO>();
		SavedVO savedVO = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.prepareStatement(get_all);
			rs = stmt.executeQuery();
			while(rs.next()) {
				savedVO = new SavedVO();
				savedVO.setSaved_post_id(rs.getString("saved_post_id"));
				savedVO.setMember_id(rs.getString("member_id"));
				savedVO.setPost_id(rs.getString("post_id"));
				savedVO.setCreate_time(rs.getTimestamp("create_time"));
				list.add(savedVO);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}

	@Override
	public List<SavedVO> getByMemberId(String member_id) {
		List<SavedVO> list = new ArrayList<SavedVO>();
		SavedVO savedVO = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.prepareStatement(get_by_member_id);
			
			stmt.setString(1, member_id);
			rs = stmt.executeQuery();
			while(rs.next()) {
				savedVO = new SavedVO();
				savedVO.setSaved_post_id(rs.getString("saved_post_id"));
				savedVO.setMember_id(rs.getString("member_id"));
				savedVO.setPost_id(rs.getString("post_id"));
				savedVO.setCreate_time(rs.getTimestamp("create_time"));
				list.add(savedVO);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	@Override
	public List<String> getPost_idByMemberId(String member_id) {
		List<String> list = new ArrayList<String>();
		String post_id = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.prepareStatement(get_by_member_id);
			
			stmt.setString(1, member_id);
			rs = stmt.executeQuery();
			while(rs.next()) {
				post_id = rs.getString("post_id");
				list.add(post_id);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}

	@Override
	public void delete(String post_id, String member_id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			conn.setAutoCommit(false);
			stmt = conn.prepareStatement(delete_by_post_id);
			
			stmt.setString(1, post_id);
			stmt.setString(2, member_id);
			stmt.executeUpdate();
			
			conn.commit();
			conn.setAutoCommit(true);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			if(conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();
			}	
		} finally {
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}		
		
	}	
	
	public static void main(String[] args) {
		SavedJDBCDAO test = new SavedJDBCDAO();
		//insert
//		SavedVO savedVO = new SavedVO();
//		savedVO.setMember_id("MB00001");
//		savedVO.setPost_id("PID00010");
//		test.insert(savedVO);
		
		//delete
//		test.delete("SID00011");
		
		//select
//		SavedVO savedVO2 = test.findByPrimaryKey("SID00010");
//		System.out.println(savedVO2.toString());
		
		//getAll
//		List<SavedVO> list = new ArrayList<SavedVO>();
//		list = test.getAll();
//		for(SavedVO savedVO : list) {
//			System.out.println(savedVO.toString());
//		}
		
		//getByMemberId
//		List<SavedVO> list = new ArrayList<SavedVO>();
//		list = test.getByMemberId("MB00001");
//		for(SavedVO savedVO : list) {
//			System.out.println(savedVO.toString());
//		}
//		
//		List<String> list = new ArrayList<String>();
//		list = test.getPost_idByMemberId("MB00001");
//		for(String post_id : list) {
//			System.out.println(post_id);
//		}
		
		//delete
//		test.delete("PID00009", "MB00004");
		
		//getByPostId
		List<SavedVO> list = new ArrayList<SavedVO>();
		list = test.getByPostId("PID00003");
		for(SavedVO savedVO : list) {
			System.out.println(savedVO.toString());
		}
	}

	@Override
	public List<SavedVO> getByPostId(String post_id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		List<SavedVO> list = new ArrayList<SavedVO>();
		ResultSet rs = null;
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.prepareStatement(getByPostId);
			
			stmt.setString(1, post_id);
			rs= stmt.executeQuery();
			while(rs.next()) {
				SavedVO savedVO = new SavedVO();
				savedVO.setSaved_post_id(rs.getString("saved_post_id"));
				savedVO.setMember_id(rs.getString("member_id"));
				savedVO.setPost_id(rs.getString("post_id"));
				savedVO.setCreate_time(rs.getTimestamp("create_time"));
				list.add(savedVO);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			if(conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();
			}	
		} finally {
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}

	
}
