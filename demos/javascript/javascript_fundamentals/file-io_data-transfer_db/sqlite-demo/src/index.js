// Entry point — initialize schema, insert a row, list everyone
import { getEmployees, initializeDatabase, insertEmployee } from "./database.js";

initializeDatabase();

insertEmployee({
  id: "E-1001",
  firstName: "David",
  lastName: "Tucker",
  department: "Engineering",
  isActive: true
});

console.table(getEmployees());
