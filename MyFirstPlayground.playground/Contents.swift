import Foundation;
//test commit
//---------------------------------------- Const and Var ------------------------------------------
var name = "Jack";

print("This is my first print", name, "Hello World");

name = "John";
print("This is my first print \(name)");

print("");
//------------------------------------------ DataType ---------------------------------------------

var myCurrentAge: Int = 17;
var myCurrentHeight: Float = 170.5;
var isAlive: Bool = true;
var testName: String = "George";

//------------------------------------- Arithmetic Operation --------------------------------------

let number_1 = 20;
let number_2 = 10;

print("Summation = ",number_1 + number_2);
print("Substraction = ",number_1 - number_2);
print("Multiplication = ",number_1 * number_2);
print("Divide = ",number_1 / number_2);
print("Modulo = ",number_1 % number_2);
print("");

//----------------------------------- Challenge 1: About Me ---------------------------------------

let myFirstName = "Yuvens";
let myLastName = "Barata";
let myAge = 25;

print("Hello, my name is \(myFirstName), my family name is \(myLastName). This year, I'm \(myAge) years old");

print("");
//------------------------------------- Conditional Operation -------------------------------------

var x = 10;
var y = 5;

x > y;
x < y;
x == y;
x != y;
x <= y;
x >= y;

if (x > y)
{
    print("x is bigger than y");
}
else if (x < y)
{
    print("x is smaller than y");
}
else
{
    print("x is equal to y");
}

print("");

//------------------------------------------ Challenge 2 ------------------------------------------

var argentineGoals = 0;
var franceGoals = 0;

// First half result
argentineGoals += 1;
franceGoals += 1;

// Second half result
argentineGoals += 3;
franceGoals += 2;

if (argentineGoals > franceGoals)
{
    print("Win! 😃");
}
else if (argentineGoals < franceGoals)
{
    print("Lose... Sadlyfe... 😢");
}
else
{
    print("Draw? Impossible 🖕");
}

print("");

//------------------------------------------ Looping -----------------------------------------------

var j = 5;
for index in stride(from: 0, to: j, by: 2)
{
    print("\(index) times 5 is \(index * 5)");
}

print("");

for index in 1...5
{
    print("\(index) times 5 is \(index * 5)");
}

print("");
//------------------------------------ Challenge 3: Prime Number -----------------------------------

for index in 1...50
{
    var result = "";
    
    if (index % 2 == 0)
    {
        result += "🤩";
        
        if (index == 2)
        {
            result += "😫";
        }
    }
    
    if (index % 2 == 1)
    {
        result += "😎"
        
        if (index != 1 && (index == 3 || index == 5 || index == 7 || (index % 3 != 0 && index % 5 != 0 && index % 7 != 0)))
        {
            result += "😫"
        }
    }
    
    print(index, result);
}

print("");
//--------------------------------------- Conditional Switch ---------------------------------------

var someChar = "z";

switch someChar
{
    case "z":
        print("Ini Z")
    
    case "a":
        print("Ini A")
    
    case "b","c","d":
        print("Ini lain lain")
    
    default:
        print("Undefined")
}

print("");

let approxCount = 8;

switch approxCount
{
    case 0:
        print("No moons orbiting Saturn")
    case 1..<5:
        print("A few moons orbiting Saturn")
    case 1..<12:
        print("Several moon orbiting Saturn")
    default:
        print("All moon orbitin Saturn")
}

print("");
//----------------------------- Challenge 4 : Switch Condition ------------------------------------

var group = "A";

switch group
{
    case "A":
        print("URU, RUS, KSA, EGY");
    case "B":
        print("SPA, POR, IRN, MOR");
    case "C":
        print("FRA, DEN, PER, AUS");
    case "D":
        print("CRO, ARG, NGA, ICE");
    default:
        print("No group found");
}

print("");
//------------------------------------------ TUPLES -----------------------------------------------

let httpErrorCode: (code: Int, descr: String) = (404, "Not Found")

print(httpErrorCode.descr);
print(httpErrorCode.code);

print("");

let lockCombination: (Int, Int, Int) = (6,1,7)
let octaCombination = lockCombination;

print(octaCombination.0);

print("");

//---------------------------------- COLLECTION (Array, Set, Dictionary) ---------------------------

// Array -> Order matters
// Set -> Unique data, order doesn't matter
// Dictionary -> Has key-values pair

//Array
var techFacilitator = [String]()
techFacilitator.isEmpty;
techFacilitator.count;
techFacilitator.append("Haryanto");
techFacilitator.append("Octa");
techFacilitator.count;
print(techFacilitator[1]);
techFacilitator.insert("Athoya", at: 2);
techFacilitator[2];
print("");

var designFacilitator = ["Rara","Nanny"]
designFacilitator.count;

var businessFacilitator: [String] = ["Henri"]
businessFacilitator.count;

for fac in techFacilitator
{
    print(fac);
}

print("");

//Set
var musicGenre = Set<String>()
musicGenre.isEmpty;
musicGenre.count;

musicGenre.insert("Rock");
musicGenre.insert("Jazz");

if !musicGenre.isEmpty
{
    print("Jumlah total genre adalah \(musicGenre.count)");
}

for genre in musicGenre
{
    print(genre);
}

print("");

//Dictionary
var airport = [String:String]()
airport.isEmpty;
airport.count;

airport["CGK"] = "Jakarta";
airport["MLG"] = "Malang";
airport["SMG"] = "Semarang";
airport["BSD"] = "Bumi Serpong Damai";
airport["ALS"] = "Alam Sutera";

airport.count;
// Still wrapped as Optional
print(airport["SMG"]);
// Force Unwrapped
print(airport["CGK"]!);

if let airportName = airport["BSD"]
{
    print(airportName);
}

print("");

for data in airport
{
    print(data);
}

print("");

for key in airport.keys
{
    print(key);
}

print("");
for nilai in airport.values
{
    print(nilai);
}

print("");

//------------------------------------ Challenge: Dictionary --------------------------------------

let makhluk: [String:[String]] = [
    "Hewan":["Kambing","Kucing"],
    "Unggas":["Ayam","Bebek","Angsa"],
    "Serangga":["Nyamuk","Lalat","Lebah","Laron"]
]

makhluk["Hewan"]?.count;
makhluk["Unggas"]?.count;
makhluk["Serangga"]?.count;
makhluk["Hewan"]![0]

print("Jumlah hewan = \(makhluk["Hewan"]!.count)");
print("Jumlah unggas = \(makhluk["Unggas"]!.count)");
print("Jumlah serangga = \(makhluk["Serangga"]!.count)");
print("Total makhluk = \(makhluk["Hewan"]!.count + makhluk["Unggas"]!.count + makhluk["Serangga"]!.count)");

print("");

var total = 0;

for jenis in makhluk.keys
{
    if let arrMacam = makhluk[jenis]
    {
        print("Jenis \(jenis) terdapat \(arrMacam.count) macam")
        total += arrMacam.count
    }
}

print("Total nya ada \(total)");

print("");

//------------------------------------------------ FUNCTION ----------------------------------------

func hello()
{
    print("Hello World!")
}

hello()
print("");

func menyapa(siapa: String)
{
    print("Hallo \(siapa)");
}

menyapa(siapa: "Andi");
print("");

func hitung(_ a: Int)-> Int
{
    var b = 0;

    b = b + a;
    
    return b;
}

print(hitung(5));
print("");

func greet(nama: String) -> String
{
    let greeting = "Hello " + nama + "!";
    return greeting;
}

print(greet(nama: "John"));
print(greet(nama: "Jack"));
print("");

func salam(person: String, alreadyGreeted: Bool) -> String {
    
    var greet = "";
    if alreadyGreeted {
        greet = "Hello Again " + person;
    } else {
        greet = "Nice to meet you " + person;
    }
    
    return greet;
}
print(salam(person: "Tim", alreadyGreeted: true))
print("");

//--------------------------------- Challenge: Function -------------------------------------------

func count(_ a: Int, _ b: Int) -> Int
{
    return a + b;
}

print(count(5,3));

print("");

func even(_ a: Int) -> Bool
{
    return (a % 2 == 0) ? true : false;
    
}

let n = 5;

if even(n)
{
    print("\(n) adalah genap");
}
else
{
    print("\(n) adalah ganjil");
}

print("");

func cekSuhu(_ suhu : Int) -> String
{
    var result = "";
    
    if (suhu >= 0 && suhu < 29)
    {
        result = "Suhu normal";
    }
    else if (suhu >= 29 && suhu < 49)
    {
        result = "Suhu hangat";
    }
    else if (suhu >= 49 && suhu < 101)
    {
        result = "Suhu panas";
    }
    else
    {
        result = "undefined";
    }
    
    return result;
}

print(cekSuhu(100));
print("");

func konversi(_ value: Float, _ awal : String, _ akhir : String) -> Float
{
    var result: Float = 0;
    
    if (awal == "C")
    {
        if (akhir == "F")
        {
            result = (value * 9/5) + 32;
        }
        else if (akhir == "K")
        {
            result = (value + 273.15);
        }
        else if (akhir == "C")
        {
            result = value;
        }
    }
    else if (awal == "F")
    {
        if (akhir == "C")
        {
            result = (value - 32) * 5/9;
        }
        else if (akhir == "K")
        {
            result = (value - 32) * 5/9 + 273.15;
        }
        else if (akhir == "F")
        {
            result = value;
        }
    }
    else if (awal == "K")
    {
        if (akhir == "C")
        {
            result = value - 273.15;
        }
        else if (akhir == "F")
        {
            result = (value - 273.15) * 9/5 + 32;
        }
        else if (akhir == "K")
        {
            result = value;
        }
    }
    
    return result;
}

print(konversi(100,"K","C"));
print("");

//--------------------------------------------- Enum -----------------------------------------------

enum ArahMataAngin
{
    case barat
    case timur
    case selatan
    case utara
}

enum GambarKartuRemi
{
    case hati, keriting, wajik, sekop
}

let kartuRemi: GambarKartuRemi = .hati;

let arah: ArahMataAngin = .timur

enum Planet
{
    case Merkurius, Venus, Bumi, Mars, Jupiter, Saturnus, Uranus
}

var planet: Planet = .Merkurius

switch planet
{
    case .Merkurius:
        print("Ini adalah planet Merkurius");
    default:
        print("Ini planet asing");
}
print("");

//-------------------------------- Challenge: Temp Conversion Using Enum ----------------------------------------

enum TempType
{
    case C
    case K
    case F
}

func tempConversion(_ value: Float, _ awal: TempType, _ akhir: TempType) -> Float
{
    var result: Float = 0;
    
    if (awal == TempType.C)
    {
        if (akhir == TempType.F)
        {
            result = (value * 9/5) + 32;
        }
        else if (akhir == TempType.K)
        {
            result = (value + 273.15);
        }
        else if (akhir == TempType.C)
        {
            result = value;
        }
    }
    else if (awal == TempType.F)
    {
        if (akhir == TempType.C)
        {
            result = (value - 32) * 5/9;
        }
        else if (akhir == TempType.K)
        {
            result = (value - 32) * 5/9 + 273.15;
        }
        else if (akhir == TempType.F)
        {
            result = value;
        }
    }
    else if (awal == TempType.K)
    {
        if (akhir == TempType.C)
        {
            result = value - 273.15;
        }
        else if (akhir == TempType.F)
        {
            result = (value - 273.15) * 9/5 + 32;
        }
        else if (akhir == TempType.K)
        {
            result = value;
        }
    }
    
    return result;
}

print(tempConversion(100, .C, .K))

print("");

//---------------------------------------- Value & Reference Type -------------------------------------------------

struct Indofood{
    var makanan: String = "Indomie"
    var minuman: String = "Teh Botol"
}
var Indomaret = Indofood();
var Alfamart = Indomaret;

Indomaret.makanan = "Mie Sedap";

print("Indomaret jualan \(Indomaret.makanan)");
print("Alfamart jualan \(Alfamart.makanan)");

print("");

class cuaca{
    var langit: String = "Mendung"
};

var BSD = cuaca();
var Alsut = BSD;

BSD.langit = "Hujan";

print("Cuaca di BSD sedang \(BSD.langit)")
print("Cuaca di Alsut juga sedang \(Alsut.langit)");

print(Indofood());
print(cuaca().langit);

print("");
//----------------------------------------Method for Structure & Class --------------------------------------------

class Counter{
    var namaCounter: String = ""
    
    //****************** Init digunakan agar dapat mengaktifkan inisialisasi seperti structure
    init(namaCounter: String) {
        self.namaCounter = namaCounter;
    }
    //***********************
    
    var count = 0;
    
    func increment() {
        count += 1;
        print(count);
    }
    
    func increment(by amount: Int) {
        count += amount;
        print(count);
    }
    
    func reset() {
        count = 0;
        print(count);
    }
    
    static func greet() {
        print("Hi, I am counter class");
    }
}

let counter = Counter(namaCounter: "Aloha Counter");
print(counter.namaCounter);

counter.increment();
counter.increment(by: 3);
counter.reset();

Counter.greet();

print("");


struct Buku {
    var judul : String
    var penulis : String
    var halaman : Int
    var harga : Int
    
    func printAll() {
        print("Buku favorit saya berjudul \(judul). Dikarang oleh \(penulis) sebanyak \(halaman) halaman. Dapat dibeli seharga Rp \(harga) di toko buku terdekat.");
    }
    
}

let bukuSaya = Buku(judul: "ABCD", penulis: "Seseorang", halaman: 300, harga: 200000)
bukuSaya.printAll();

print("");

//---------------------------------------- Inheritance & Overriding ----------------------------------------------
class Person {
    var name: String;
    var age: Int;
    
    init(name: String, age : Int){
        self.name = name;
        self.age = age;
    }
    
    func birthday(){
        self.age += 1;
        print("Happy birthday, \(self.name)");
    }
    
    func salam(){
        print("Selamat pagi");
    }
}

class Youtuber: Person{
    let channelName: String;
    var subscriber: Int;
    
    init(name: String, age: Int, channelName: String, subscriber: Int){
        self.channelName = channelName;
        self.subscriber = subscriber;
        super.init(name: name, age: age)
    }
    
    func buySubscriber(_ val: Int) {
        return(self.subscriber += val)
    }
    
    override func salam(){
        print("Selamat malam");
    }
}

let handy = Person(name: "Handy", age: 20)

//** class Youtuber sendiri tidak memiliki properties name dan age, properties tersebut didapat dari class Person
let haryanto = Youtuber(name: "Haryanto", age: 17, channelName: "Swift Engineer", subscriber: 30)

handy.name;
haryanto.name;
haryanto.birthday();
handy.salam();
haryanto.salam();

print("");
//-------------------------------------------------- Protocol ----------------------------------------------------
protocol Weapon {
    var name: String {get}
    var canFire: Bool {get}
    var canCut: Bool {get}
}

protocol Fireable {
    var magazineSize: Int {get}
}

protocol Cuttable {
    var weight: Double {get}
    var steel: String {get}
}

struct LongSword: Weapon, Cuttable {
    let name: String;
    let steel: String;
    let weight = 7.2;
    let canFire = false;
    let canCut = true;
}

struct AK47: Weapon, Fireable {
    let name = "AK47";
    let magazineSize = 30;
    let canFire = true;
    let canCut = false;
}

//** Bonus agar apabila canFire dan canCut pada struct tidak di declare, tidak error
extension Weapon {
    var canFire: Bool {return self is Fireable}
    var canCut: Bool {return self is Cuttable}
}

let longclaw = LongSword(name: "Longclaw", steel: "Valyrian")
longclaw.canCut
longclaw.canFire
longclaw.name;
//---------------------------------------- Social Media Challenge ------------------------------------------------

class User {
    var userName: String = "";
    var fullName: String = "";
    var email: String = "";
    
    init(userName: String, fullName: String, email: String) {
        self.userName = userName;
        self.fullName = fullName;
        self.email = email;
    }
}

class Post {
    var text: String = "";
    var userName: String = "";
    var likers = [String]();
    var comments = [String]();
    
    init(text: String, userName: String) {
        self.text = text;
        self.userName = userName;
    }
    
    func tambahLikers(_ userLike: String) {
        likers.append(userLike);
    }
    
    func add(_ newComment: String) {
        comments.append(newComment)
    }
    
    func getAllLikersString() -> String {
        var result: String;
        
        result = likers.joined(separator: ", ")
        
        return result;
    }
}

class Comment {
    var userName: String = "";
    var text: String = "";
    
    init(userName: String, text: String) {
        self.text = text;
        self.userName = userName;
    }
}

let testPost = Post(text: "Aloha", userName: "Random B")

testPost.tambahLikers("NPC A");
testPost.tambahLikers("NPC B");
testPost.tambahLikers("NPC C");
print(testPost.likers);

testPost.add("Hello world");
print(testPost.comments);

print(testPost.getAllLikersString());











