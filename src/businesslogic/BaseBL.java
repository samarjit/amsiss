package businesslogic;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public interface BaseBL extends Serializable {
HashMap  processRequest(Map buslogHm);
HashMap preSubmitProcessBL(Map hm);
HashMap postSubmitProcessBL(Map hm);
HashMap preRetreiveProcessBL(Map buslogHm);
HashMap postRetreiveProcessBL(Map buslogHm);
HashMap postInsertProcessBL(Map buslogHm);
HashMap preInsertProcessBL(Map buslogHm);
HashMap preDeleteProcessBL(Map buslogHm);
HashMap postDeleteProcessBL(Map buslogHm);

HashMap jsrpcProcessBL(Map buslogHm, String rpcid);
 

}
