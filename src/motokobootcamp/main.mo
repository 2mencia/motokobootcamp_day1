import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Float "mo:base/Float";
import Text "mo:base/Text";
import Bool "mo:base/Bool";
import Array "mo:base/Array";


actor {

 // Day 1
  public func greet(name : Text) : async Text{
    return "Hello, " # name # "!";
  };

  // Tutorial Dfinity Team
  var height : Float = 1.81;
  var age : Nat = 35;
  var is_awake : Bool = false;
  var favorite_show : ?Text = null;

  public query func get_height() : Float{
    return height;
  };

  public func set_height( _height : Float ):async (){
    height := _height;
    return height;
  };

  public func set_age ( _age : Nat):async (){
    age := _age;
    return age;
  };

  public func set_favorite_show ( new_show : Text): async Text{
    favorite_show := new_show;
    return favorite_show;
  };

    // Challenge 1

  var a : Nat = 5 ;
  var b : Nat = 2 ;

  public func sum (c : Nat): Nat {
    c = a + b;
    return c;
  };

    // Challenge 2

  public func square (area : Nat): Nat{
    area = a * b;
    return area;
  };

    // Challenge 3

  var days : Nat = 1 ;

  public func day_to_second ( _days : Nat):async Nat{
    days = ((_days % 24) % 60) % 60 );
    return days;
  };

   // Challenge 4
   var counter : Nat = 0 ;

   public func increment_counter (_counter : Nat):async Nat{
     counter += _counter;
     return counter;
   };

   public func clear_counter(): Nat{
     counter := 0;
     return counter;
   };

   // Challenge 5
   var is_divisible : Bool = true ;
   public func divide (m : Nat, n : Nat):async Bool{
     if(m % n == 0){
       is_divisible := true;
     };
     else is_divisible := false;
     return is_divisible;
     };

  // Challenge 6

  var is_even : Bool = true;
  public func even (m : Nat, n: Nat):async Bool{
    if(m != n){
      is_even := false;
    };
    else is_even := true;
    return is_even;
  };


  // Challenge 7
  var i : Nat = 0;
  let array_sum : [Nat] = [1,2,3,4] ;

  public func sum_of_array (_array_sum : [Nat]) : async Nat{
    for(i in _array_sum[i],i < 4){
      array_sum += _array_sum[i];
      i += 1 ;
    };
    return(array_sum);
  };

  // Challenge 8
  i := 0;
  let array_max : Nat = 0;

  public func max_of_array (_array_max : [Nat]) : async Nat{
    if (_array_max != 0){
      for(i in _array_max[i],i < 4){
        if (array_max < _array_max[i]){
          array_max := _array_max[i];
        };
        else ;
        i += 1 ;
      };
    };
    else array_max := 0;
    return(array_max);
    };


  // Challenge 9 - INCOMPLETE
  i := 0;

  public func remove_from_array (_array_remove : [Nat]):async Array{
    for (i=0, i < 4, i++){


    };
    
  // Challenge 10 - INCOMPLETE

  i := 0;
  let sort_from_array : [Nat] = [3,1,2];

  public func sort_from_array (_sort_from_array : [Nat]):async Array{
    for (i=0, i<_sort_from_array[2], i++) (_sort_from_array[i] < _sort_from_array[i+1] )
      If _sort_from_array[i]

    };


};