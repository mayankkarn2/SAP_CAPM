const cds = require("@sap/cds");
const { Tasks } = cds.entities('my.project');

module.exports = ProjectService = (srv) => {

    // Added the read operation (R) in CRUD
    srv.on("READ","Tasks", async (req,res) => {
        console.log("hai");
        const result = await SELECT.from(Tasks);
        // console.log(result);
        return result;
    });

    //Get Tasks of Single User
    srv.on("getTasks", async (req,res) => {
        const user = req.data.user;
        if(user==='') {
            return "Please enter user";
        }
        const result = await SELECT.from(Tasks).where({AssignedTo: user})/*.columns('TaskName')*/;
        return result;
    });

    
    



    
}