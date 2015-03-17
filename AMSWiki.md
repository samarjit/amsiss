# Introduction #

Asset Management System (AMS) is an implementation of dynamic screen generation based on placeholder templates jsps and DB metadata, and is driven by Workflow engine. The


# Details #

**AMS** (_Asset Management System_) is used as a proof of concept regarding implementation of
1. Dynamic screen generation
2. Workflow Engine
### Dynamic Screen Generation ###
**Dynamic Screen Generation** works by creating dynamic queries based on screen metadata. These screen metadata gets stored in framework related tables. Each screen is divided into screens (global definitions for a screen), panel fields (definitions per panel), field (field level details). It is possible to define which tables are mapped to which panels. The relations between panels needs to be created using IDs of different panels. Then based on these info dynamic queries gets created and screen gets formed. Usually there are two templates per logical screen of which one is list screen and another is details view/modify screen.
**Workflow** gets invoked once the change stage/ submit button is clicked in a screen. Once the workflow gets invoked there are two hooks pre submit and post submit hooks gets called for validation. The workflow is basically jBPM jPDL which is run by an internal engine. The engine is stateless as such and is like a plugin. But it does maintain an application table and the current stage of workflow. The workflows can be authored by eclipse GUI jBPM designer and a XML repository is maintained which gets cached at the time of loading.

### CRUD ###
**CRUD** Create read update delete queries are automatically generated once a page gets created. The queries are formed in the same way as select queries are formed for the list and details screen. Although a page in itself is sufficient to show CRUD functionality but adding workflow to it makes it behave like an application which various stages and business level validations.

### Business Logic ###
**Business Logic** is implemented as callback functions or hooks that will be invoked before/after inset, before/after update,.. delete and so on....
A little insight about the invoation points can be seen from the base interface that much be implemented by all callbacks.
```
public interface BaseBL extends Serializable {
 HashMap jsrpcProcessBL(java.util.Map buslogHm, java.lang.String rpcid) ;//invoked by JavaScriptRPCAC 
 //class from javascript directly 
 HashMap postDeleteProcessBL(Map buslogHm) ;   //invoked by DeleteDataAC class after processing 
 HashMap postInsertProcessBL(Map buslogHm) ;   //invoked by InsertDataAC class after processing 
 HashMap postRetreiveProcessBL(Map buslogHm) ; //invoked by RetrieveDetailsAC class after processing 
 HashMap postSubmitProcessBL(Map hm) ;         //invoked by WorkflowAC class after processing 
 HashMap postUpdateProcessBL(Map buslogHm) ;   //invoked by UpdateDataAC class after processing 
 HashMap preDeleteProcessBL(Map buslogHm) ;    //invoked by DeleteDataAC class before processing 
 HashMap preInsertProcessBL(Map buslogHm) ;    //invoked by InsertDataAC class before processing 
 HashMap preRetreiveProcessBL(Map buslogHm) ;  //invoked by RetrieveDetailsAC class before processing 
 HashMap preSubmitProcessBL(Map hm) ;          //invoked by WorkflowAC class before processing 
 HashMap preUpdateProcessBL(Map buslogHm) ;    //invoked by UpdateDataAC class before processing 
 HashMap processRequest(Map buslogHm) ;        //invoked by screenFlowControllerServlet class while login 
}
```

The current implementation uses **Struts 2.1.8** and **Oracle 10g express edition** as database. It does not use hibernate so portability out of box is a question. But previously it was using **MySQL** so I believe it is still in some form portable with some changes in code like replacing oracle function of `TO_DATE()` and `TO_CHAR()`. We did make use of only one sequence but I believe workarounds are possible.

---

If anyone wants to use it please feel free to contact us.(for now me :), until we have a supporting group or my old team is willing to extend some help). I am available at samarjit dot samanta at gmail dot com

---


`*`Currently there is no direct out of box jar file that can be deployed on a server like tomcat to run the application. But I believe checking out the source and building is only too trivial. I have supplied the eclipse project file as well.

`*`The DB dump is also available in [sqldump.dmp](http://code.google.com/p/amsiss/source/browse/trunk/sqldump.dmp) file you can locate in src folder.

`*`There is another project where all the library related files that were used in the project are available [http://code.google.com/p/amsjars/source/browse/#svn/trunk/lib](http://code.google.com/p/amsjars/source/browse/#svn/trunk/lib)