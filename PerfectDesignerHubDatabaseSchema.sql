CREATE TABLE CustomerTable (
    id BIGINT PRIMARY KEY,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    PhoneNumber BIGINT,
    Address VARCHAR(255)
);
CREATE TABLE OrderTable (
    id BIGINT PRIMARY KEY,
    CustomerId BIGINT,
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

### Dress
```sql
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