CREATE TABLE IF NOT EXISTS subscription (
    subscriptionID SERIAL PRIMARY KEY,
    userID INT NOT NULL,
    libraryID INT NOT NULL,
    subscriptionDate DATE NOT NULL,

    FOREIGN KEY (userID) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (libraryID) REFERENCES library(LibraryID) ON DELETE CASCADE ON UPDATE CASCADE
)