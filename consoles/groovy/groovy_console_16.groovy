import com.snapchat.admanager.api.datapump.ApiServerCaller

ApiServerCaller caller = null

Long testV = caller.fetchLifeTimeSpentOrTotalSpent(null,null,null);

System.out.println(testV);