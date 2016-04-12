SELECT * FROM Garbage.dbo.tblBooks, Garbage.dbo.tblAuthors, Garbage.dbo.tblAuthorBook SELECT tblAuthors.AuthorName, tblBooks.BookName
FROM     tblAuthorBook INNER JOIN
                  tblAuthors ON tblAuthorBook.AuthorId = tblAuthors.AuthorId INNER JOIN
                  tblBooks ON tblAuthorBook.BookId = tblBooks.BookID