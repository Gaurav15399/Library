

import java.sql.*;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shreeram
 */
public class JDBCUtil {
    
    static Statement sm;
static PreparedStatement stm;
private static Connection conn;
static ResultSet rs;
public static PreparedStatement getQueryAdminLogin(){
    try{
    String sql1="Select * from admin where ausr=? and  apass=?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
} 
public static PreparedStatement getQueryStudentLogin(){
try{
    String sql1="Select * from student where susr=? and  spass=?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryAddBook(){
try{
    String sql1="insert into tbooks(bid, bname,qty) values(?,?,?)";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryDeleteBook(){
try{
    String sql1="delete from tbooks where bname=?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryNewAdmin(){
    String Admin="admin";
try{
    String sql1="insert into "+ Admin +" (aid, ausr,apass,rpass) "
            + "select * from (select ?,?,?,?) as tmp where "
            + "not exists (select ausr,aid "
            + "from admin"
            + " where ausr=?and aid=?)";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryNewStudent(){
    try {
        String sql1="insert into student (sid,sname,susr,spass,syear) "
            + "select * from (select ?,?,?,?,?) as tmp where "
            + "not exists (select susr,sid "
            + "from student"
            + " where susr=? and sid=?)";
    stm=conn.prepareStatement(sql1);  
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return stm;
}
public static PreparedStatement getRequestAdmin(){
    try {
        String sql1="update student set doi = ? where sid = ?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return stm;
}
public static PreparedStatement showBook(){
try{
    String sql1="Select * from tbooks";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;

}
public static PreparedStatement getQueryIssueBook(){
try{
    String sql1="insert into ibooks (bid,name,doi,sid) values (?,?,?,?)";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQuerybid(){
    try {
        String sql1="select bid from tbooks where bname=?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    return stm;
}
public static PreparedStatement getQueryListBook(){
try{
    String sql1="select name from ibooks where sid= ?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryReturnBook(){
try{
    String sql1="delete from ibooks where sid= ? and name=?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryDoi(){
    try {
        String sql1="select doi from ibooks where sid=? and name=?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}
public static PreparedStatement getQueryShowAllIssue(){
    try {
        String sql1="select * from ibooks ";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}
public static PreparedStatement getQuerySearch(){
    try {
        String sql1="select * from ibooks where sid=?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}
public static PreparedStatement getQueryPasswordAdmin(){
    try {
        String sql1="select * from admin where aid=? and ausr=?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}
public static PreparedStatement getQueryQA(){
    try {
        String sql1="select * from security where id=? and name=?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}

public static PreparedStatement getQueryPasswordStudent(){
    try {
        String sql1="select * from student where sid =? and susr =? ";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}
public static PreparedStatement getQueryChargeBook(){
try{
    String sql1="replace into payment (sid,sname,charges) values (?,?,?)";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryStudent(){
try{
    String sql1="select * from student where sid = ?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryShowAllData(String table){
    try {
        String sql1="select * from "+table;
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}
public static PreparedStatement getQueryDeleteCharges(){
    try {
        String sql1="delete from payment where charges = ?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}

public static PreparedStatement showBookQTY(){
try{
    String sql1="Select * from tbooks where bname=?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryUpdateQTY(){
try{
    String sql1="update tbooks set qty =? where bname=?";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}

public static PreparedStatement getQueryInsertSecurity(){
try{
    String sql1="insert into security (id,name,que,ans) values (?,?,?,?)";
    stm=conn.prepareStatement(sql1);  
    }catch(SQLException e){
    e.printStackTrace();
    }
return stm;
}
public static PreparedStatement getQueryShowPayment(){
    try {
        String sql1="select * from payment where sid=?";
        
    stm=conn.prepareStatement(sql1);  
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return stm;
}

///////!static content
/* JDBC Connection */
    static{    
                   try{  
Class.forName("com.mysql.jdbc.Driver");  
 conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/library","root","root123");  
 
//here sonoo is database name, root is username and password  
}catch(Exception e){
    System.out.println(e);
}  
    
    }
}
