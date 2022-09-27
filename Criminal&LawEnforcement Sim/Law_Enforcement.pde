class LawEnforcement {
  
  String name;
  String occupation;
  
  //Out of 10
  int intelligence;
  int speed;
  
  //Out of 5
  int experience;
  int intimidation;
  
  int fedPoints; // Police starts off with 9 points, Detective starts off with 10 points, and FBI starts off with 11 points
  
  LawEnforcement( String n , String o , int iq , int exp, int sp ) {
    this.name = n;
    this.occupation = o;
    this.intelligence = iq;
    this.experience = exp;
    this.speed = sp;
    
    if ( this.experience >= 4 && this.intelligence >= 9 )
      this.intimidation = 5;
    else if ( this.experience >= 3 && this.intelligence >= 8 )
      this.intimidation = 4;
    else if ( this.experience >= 2 && this.intelligence >= 6 )
      this.intimidation = 3;
    else if ( this.experience >= 2 && this.intelligence >= 5 )
      this.intimidation = 2;
    else{
      this.intimidation = 1;
    }
    
    if ( o == "Police" )
      this.fedPoints = 9;
    else if ( o == "Detective" )
      this.fedPoints = 10;
    else {
      this.fedPoints = 11;
    }
    
  }
  
  void description(){
    println( header( this.name ) );
    println( this.name );
    println( header( this.name ) );
    println( "Occupation:", this.occupation ); 
    println( "Intelligence:", this.intelligence + "/10");
    println( "Speed:", this.speed + "/10");
    println( "Experience:", this.experience + "/5");
    println( "Intimidation:", this.intimidation + "/5");
    println();
  }
  
  void arrest( Criminal c ){
    if( c.inJail == true )
      println(c.name, "is already in jail. I don't think it's possbile to arrest and arrested person because the arrested person is already arrested. what?");
    else if( this.occupation == "Police" ){
      if ( c.streetPoints < 5 ){
        println( this.name, "has arrested", c.name, "for suspicious criminal activity." );
        c.inJail = true;
        this.fedPoints += 2;
        c.streetPoints -= 2;
      }
      else{
        println( this.name, "tried to arrest", c.name, "but couldn't gather enough evidence on them." );
        this.fedPoints -= 2;
        c.streetPoints += 1;
      }
    }
    else if( this.occupation == "Detective" ){
      if ( c.streetPoints < 7 ){
        println( this.name, "has arrested", c.name, "for suspicious criminal activity." );
        c.inJail = true;
        this.fedPoints += 2;
        c.streetPoints -= 2;
      }
      else{
        println( this.name, "tried to arrest", c.name, "but couldn't gather enough evidence on them." );
        this.fedPoints -= 2;
        c.streetPoints += 2;
      }
    }
    else if( this.occupation == "FBI" ){
      if ( c.streetPoints < 9 ){
        println( this.name, "has arrested", c.name, "for suspicious criminal activity." );
        c.inJail = true;
        this.fedPoints += 2;
        c.streetPoints -= 2;
      }
      else{
        println( this.name, "tried to arrest", c.name, "but couldn't gather enough evidence on them." );
        this.fedPoints -= 2;
        c.streetPoints += 3;
      }
    }  
    println();
  }
  
  void summary(){
    println( this.name, "ended with a total of", this.fedPoints, "points.");
    println();
  }
  
  String header( String n ){
    String starHeader = "";
    
    for ( int i = 0; i < n.length(); i++){
      starHeader += "*";
    }
    return starHeader;
  }
  
}
