CREATE TABLE Admin (
    id BIGSERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    PhoneNumber BIGINT,
    UserId VARCHAR(255),
    UserPassword VARCHAR(255),
    Branch VARCHAR(255)
);

CREATE TABLE CustomerTable (
    id BIGSERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    PhoneNumber BIGINT,
    Address VARCHAR(255)
);

CREATE TABLE OrderTable (
    id BIGSERIAL PRIMARY KEY,
    CustomerId BIGINT,
    BranchName VARCHAR(255),
    OrderTables VARCHAR(255),
    OrderDate DATE,
    DeliveryDate DATE,
    OrderStatus BOOLEAN,
    TotalPrice FLOAT,
    FOREIGN KEY (CustomerId) REFERENCES CustomerTable(id) ON DELETE CASCADE
);

CREATE TABLE Chaniyo (
    id BIGSERIAL PRIMARY KEY,
    OrderTableId BIGINT,
    Style VARCHAR(255),
    Detail VARCHAR(255),
    ClothImage VARCHAR(255),
    DesingImage VARCHAR(255),
    Price FLOAT,
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Blouse (
    id BIGSERIAL PRIMARY KEY,
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
    Price FLOAT,
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Dress (
    id BIGSERIAL PRIMARY KEY,
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
    Price FLOAT,
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Pant (
    id BIGSERIAL PRIMARY KEY,
    OrderTableId BIGINT,
    Rubbert VARCHAR(255),
    NeckDesign VARCHAR(255),
    Pocket BOOLEAN,
    Detail VARCHAR(255),
    Price FLOAT,
    FOREIGN KEY (OrderTableId) REFERENCES OrderTable(id) ON DELETE CASCADE
);

CREATE TABLE Measurement (
    id BIGSERIAL PRIMARY KEY,
    CustomerId BIGINT,
    Sholder FLOAT,
    SholderSlope FLOAT,
    NeckRound FLOAT,
    FrontNeckDeep FLOAT,
    BackNeckDeep FLOAT,
    AcrossFront FLOAT,
    AcrossBack FLOAT,
    Chest FLOAT,
    Bust FLOAT,
    Weist FLOAT,
    Heap FLOAT,
    ArmHoldLeft FLOAT,
    ArmHoldRight FLOAT,
    BicepLeft FLOAT,
    BicepRight FLOAT,
    Mori FLOAT,
    SleeveLength FLOAT,
    ApexPointLength FLOAT,
    BlouseLength FLOAT,
    SideCutLength FLOAT,
    DressLength FLOAT,
    OnepieceLength FLOAT,
    PantWeist FLOAT,
    PantHeap FLOAT,
    PantCroch FLOAT,
    PantJang FLOAT,
    PantKnee FLOAT,
    PantAnkel FLOAT,
    PantMori FLOAT,
    PantLength FLOAT,
    ChaniyaWrist FLOAT,
    ChaniyaHeap FLOAT,
    ChaniyaLength FLOAT,
    FOREIGN KEY (CustomerId) REFERENCES CustomerTable(id) ON DELETE CASCADE
);
