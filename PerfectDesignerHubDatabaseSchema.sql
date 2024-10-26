CREATE TABLE Admin (
    id BIGINT PRIMARY KEY,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    PhoneNumber BIGINT,
    UserId BIGINT,
    UserPassword VARCHAR(255),
    Branch VARCHAR(255)
);

CREATE TABLE CustomerTable (
    id BIGINT PRIMARY KEY,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    PhoneNumber BIGINT,
    Address VARCHAR(255)
);
a
CREATE TABLE OrderTable (
    id BIGINT PRIMARY KEY,
    CustomerId BIGINT,
    BranchName VARCHAR(255),
    OrderTables VARCHAR(255),
    OrderDate DATE,
    DeliveryDate DATE,
    OrderStatus BOOLEAN,
    FOREIGN KEY (CustomerId) REFERENCES CustomerTable(id) ON DELETE CASCADE
);

CREATE TABLE Chaniyo (
    id BIGINT PRIMARY KEY,
    OrderTableId BIGINT,
    Style VARCHAR(255),
    Detail VARCHAR(255),
    ClothImage VARCHAR(255),
    DesingImage VARCHAR(255),
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Blouse (
    id BIGINT PRIMARY KEY,
    OrderTableId BIGINT,
    Style VARCHAR(255),
    NeckDesign VARCHAR(255),
    Astar BOOLEAN,
    OpeningSide VARCHAR(255),
    Neck VARCHAR(255),
    Dori BOOLEAN,
    Sleeve VARCHAR(255),
    Detail VARCHAR(255),
    ClothImage VARCHAR(255),
    DesingImage VARCHAR(255),
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Dress (
    id BIGINT PRIMARY KEY,
    OrderTableId BIGINT,
    Style VARCHAR(255),
    NeckDesign VARCHAR(255),
    Astar BOOLEAN,
    OpeningSide VARCHAR(255),
    BackOfNeck VARCHAR(255),
    Chain BOOLEAN,
    Sleeve VARCHAR(255),
    Detail VARCHAR(255),
    ClothImage VARCHAR(255),
    DesingImage VARCHAR(255),
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Pant (
    id BIGINT PRIMARY KEY,
    OrderTableId BIGINT,
    Rubbert VARCHAR(255),
    NeckDesign VARCHAR(255),
    Pocket BOOLEAN,
    Detail VARCHAR(255),
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Measurement (
    id BIGINT PRIMARY KEY,
    CustomerId BIGINT,
    Sholder VARCHAR(255),
    SholderSlope VARCHAR(255),
    NeckRound VARCHAR(255),
    FrontNeckDeep VARCHAR(255),
    BackNeckDeep VARCHAR(255),
    AcrossFront VARCHAR(255),
    AcrossBack VARCHAR(255),
    Chest VARCHAR(255),
    Bust VARCHAR(255),
    Weist VARCHAR(255),
    Heap VARCHAR(255),
    ArmHoldLeft VARCHAR(255),
    ArmHoldRight VARCHAR(255),
    BicepLeft VARCHAR(255),
    BicepRight VARCHAR(255),
    Mori VARCHAR(255),
    SleeveLength VARCHAR(255),
    ApexPointLength VARCHAR(255),
    BlouseLength VARCHAR(255),
    SideCutLength VARCHAR(255),
    DressLength VARCHAR(255),
    OnepieceLength VARCHAR(255),
    PantWeist VARCHAR(255),
    PantHeap VARCHAR(255),
    PantCroch VARCHAR(255),
    PantJang VARCHAR(255),
    PantKnee VARCHAR(255),
    PantAnkel VARCHAR(255),
    PantMori VARCHAR(255),
    PantLength VARCHAR(255),
    ChaniyaWrist VARCHAR(255),
    ChaniyaHeap VARCHAR(255),
    ChaniyaLength VARCHAR(255),
    FOREIGN KEY (CustomerId) REFERENCES CustomerTable(id) ON DELETE CASCADE
);

CREATE TABLE Employee (
    id SERIAL PRIMARY KEY,
    EmployeeName VARCHAR(255) NOT NULL
);

CREATE TABLE EmployeeWork (
    id SERIAL PRIMARY KEY,
    EmployeeId INT NOT NULL,
    WorkDate DATE NOT NULL,
    WorkAmount BIGINT NOT NULL,
    WorkDetail VARCHAR(255),
    FOREIGN KEY (EmployeeId) REFERENCES Employee(id) ON DELETE CASCADE
);

CREATE TABLE DailyOrders(
    id SERIAL PRIMARY KEY,
    CustomerId BIGINT,
    OrderAmount BIGINT,
    OrderDetail VARCHAR(255),
    OrderState INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerId) REFERENCES CustomerTable(id) ON DELETE CASCADE
)