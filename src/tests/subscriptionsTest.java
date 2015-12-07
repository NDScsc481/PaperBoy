package tests;

import static org.junit.Assert.*;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import java.sql.*;
import connections.*;


public class subscriptionsTest {
	private static int testPubID;
	private static int testCustID;
	private static int testSubID;
	private static subscriptions testSub;
	private static customer testCust;
	private static publication testPub;

	public static connect con = new connect();
	private static Statement stmt;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
    	testPub = new publication( "Runner Magazine","Sports", 9.80, "Monthly", 5);
		testPubID = testPub.getPID();
		testCust = new customer("Buddy","Bear", "1520 Garnet Ave", "#17", "San Diego", "CA", "92109", "4766666656");
		testCustID = con.getCustomerID("4766666656");
       	
   		subscriptions testSub = new subscriptions(con, testCustID, testPubID);
   		testSubID = testSub.getSID();
	}
	@Test
	public void addSubcriptionTest(){
		ResultSet r = con.getSubscriptions(testCustID, testPubID);
		assertNotNull(r);

	}
	@Test
	public void searchBySIDTest(){
		subscriptions aSub = new subscriptions(con,testSubID);
		publication aPub = aSub.getPubInfo();
		assertEquals(testPub.getTitle(), aPub.getTitle());
	}
	@AfterClass
    public static void oneTimeTearDown() {
        con.deleteColumn("customers",testCustID);
        con.deleteColumn("publications",testPubID);

    }
}
	


