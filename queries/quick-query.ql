/**
 * @name Find Redundant ifs
 * @description Detects redundant ifs in Python code.
 * @kind problem
 * @problem.severity error
 * @precision very-high
 * @id python/redundant-ifs
 * @tags security
 */

import python

from If ifstmt, Stmt pass
where pass = ifstmt.getStmt(0) and
  pass instanceof Pass
select ifstmt, "This 'if' statement is redundant."