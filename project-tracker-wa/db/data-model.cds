namespace my.project;

define entity Tasks {
    key ID: UUID;
    TaskName: String;
    AssignedDate: Date;
    AssignedTo: String;
    AssignedBy: String;
    CompleteBy: Date;
    Status: String;
}