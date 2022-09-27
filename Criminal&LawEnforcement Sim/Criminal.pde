class Criminal {
  
  String name;
  String streetName;
  int streetPoints;
  
  //Out of 10
  int strength; 
  int intelligence;
  int skill;
  int speed;
  
  //Out of 5
  int coldblooded; 
  int independence;
  int intimidation;

  boolean snitch;
  boolean inJail;
  boolean inGang;
  Gang gang;
  
  Criminal( String s , String sn, int st , int iq , int cb, int sp ){
    this.name = s;
    this.streetName = sn;
    this.strength = st;
    this.intelligence = iq;
    this.coldblooded = cb;
    this.speed = sp;
    this.streetPoints = 10;
    this.inJail = false;
    this.inGang = false;
    
    //Setting criminal's independence
    if ( this.strength >= 8 && this.intelligence >= 8 )
      this.independence = 5;
    else if ( this.strength >= 7 && this.intelligence >= 7 )
      this.independence = 4;
    else if ( this.strength >= 6 && this.intelligence >= 6 )
      this.independence = 3;
    else if ( this.strength >= 5 && this.intelligence >= 5 )
      this.independence = 2;
    else{
      this.independence = 1;
    }
      
    //Setting criminal's intimidation
    if (  this.strength >= 8 )
      this.intimidation = 5;
    else if (  this.strength >= 7 )
      this.intimidation = 4;
    else if (  this.strength >= 6 )
      this.intimidation = 3;
    else if (  this.strength >= 5 )
      this.intimidation = 2;
    else{
      this.intimidation = 1;
    }
    
    //Setting criminal's skill
    if ( this.intelligence >= 8 && this.strength >= 8 && this.coldblooded >= 4 )
      this.skill = 5;
    else if ( this.intelligence >= 7 && this.intelligence >= 7 && this.coldblooded >= 3 )
      this.skill = 4;
    else if ( this.intelligence >= 6 && this.intelligence >= 6 && this.coldblooded >= 2 )
      this.skill = 3;
    else if ( this.intelligence >= 5 && this.intelligence >= 5 && this.coldblooded >= 2 )
      this.skill = 2;
    else{
      this.skill = 1;
    }
    
    //Setting criminal's snitching likeliness
    if ( this.independence >= 3 && this.intimidation <= 2 && this.skill <= 3 )
      this.snitch = true;
    else{
      this.snitch = false;
    }
  }
  
  void description(){
    println( header( this.name ) );
    println( this.name );
    println( header( this.name ) );
    println( "Street Name:", this.streetName );
    println( "Strength:", this.strength + "/10");
    println( "Intelligence:", this.intelligence + "/10");
    println( "Speed:", this.speed + "/10");
    println( "Cold Blooded:", this.coldblooded + "/5");
    println( "Skill:", this.skill + "/5");
    println( "Intimidation:", this.intimidation + "/5");
    println( "Independence:", this.independence + "/5"); 
    println();
  }
  
  //A succesful crime gets criminals a certain amount of street points depending on the difficulty 
  
  void pickPocket( LawEnforcement l ){
    if ( this.inJail == true ) 
      println( this.name, "is in jail. They can't perform any criminal activities." );
    else if( this.skill >= 1 && this.intelligence >= 3 ){
      if ( l.occupation == "Police" ){
        if( this.intelligence > l.intelligence && this.speed > l.speed ){
          println( this.streetName, "pickpockets someone. It was like stealing candy from a baby.", l.name, "couldn't catch them." );
          this.streetPoints += 1;
          l.fedPoints -=1;
        }
        else{
            println( this.streetName, "was caught pickpocketing someone by", l.name + ".", this.streetName, "has been taken to jail." );
            this.streetPoints -= 2;
            l.fedPoints += 1;
            this.inJail = true;
        }
      }
      else{
        println(this.streetName, "pickpockets somone. It was like stealing candy from a baby.", l.name, "was busy on another case.");
        this.streetPoints += 1;
      }
    }
    else{
       println( this.streetName, "failed trying to pickpocket someone. They need to get their stealth up, maybe a trip to the snake exhibit at the zoo might help." );
       this.streetPoints -= 1;
          }
    println(); 
  }
  
  void assault( LawEnforcement l ){
    if ( this.inJail == true ){
      println( this.name, "is in jail. They can't perform any criminal activities." ); 
      println();
    }
    else if( this.strength > 4 ){
      if ( l.occupation == "Police" ){
        if( this.speed > l.speed ){
        println( this.streetName, "assaulted someone they didn't like.", l.name, "couldn't catch them." );
        this.streetPoints += 1;
        l.fedPoints -=1;
        }
        else{
            println( this.streetName, "assaulted someone but were caught by", l.name + ".", this.streetName, "has been taken to jail." );
            this.streetPoints -= 2;
            l.fedPoints += 1;
            this.inJail = true;
        }
      }
      else{
        println( this.streetName, "assaulted someone they didn't like.", l.name, "was busy on another case." );
        this.streetPoints += 1;
      }
    }
    else{
       println( this.streetName, "failed trying to assault someone. They weren't strong enough. Might need to hit the gym. " );
       this.streetPoints -= 1;
          }
    println();
  }
  
  void burglary( LawEnforcement l ){
    if ( this.inJail == true ){
      println( this.name, "is in jail. They can't perform any criminal activities." );
      println();
    }
    else if( this.intelligence >= 6 && this.intimidation >= 2 ){
      if ( l.occupation == "Detective" ){
        if( this.intelligence > l.intelligence && this.speed > l.speed ){
           println( this.streetName, "robbed the local convinience store.", l.name, "couldn't catch them." );
           this.streetPoints += 2;
           l.fedPoints -= 2;
        }
        else{
            println( this.streetName, "robbed the local convenience store but were busted by", l.name + ".", this.streetName, "has been taken to jail." );
            this.streetPoints -= 3;
            l.fedPoints += 2;
            this.inJail = true;
        }
      }
      else{
        println( this.streetName, "robbed the local convinience store.", l.name, "was busy on another case." );
        this.streetPoints += 2;
      }
    }
    else{
       println( this.streetName, "failed trying to rob the local convenience store. The cashier wasn't intimidated." );
       this.streetPoints -= 2;
          }
    println();
  }
  
  void fraud( LawEnforcement l ){
    if ( this.inJail == true )
      println( this.name, "is in jail. They can't perform any criminal activities." );
    else if( this.intelligence > 8  ){
      if ( l.occupation == "Detective" ){
        if( this.intelligence > l.intelligence && this.speed > l.speed ){
           println( this.streetName, "robbed the local convinience store.", l.name, "couldn't catch them." );
           this.streetPoints += 2;
           l.fedPoints -= 2;
        }
        else{
            println( this.streetName, "robbed the local convenience store but were busted by", l.name + ".", this.streetName, "has been taken to jail." );
            this.streetPoints -= 3;
            l.fedPoints += 2;
            this.inJail = true;
        }
      }
      else{
        println( this.streetName, "robbed the local convinience store.", l.name, "was busy on another case." );
        this.streetPoints += 2;
      }
    }
    else{
       println( this.streetName, "failed trying to rob the local convenience store. The cashier wasn't intimidated." );
       this.streetPoints -= 2;
          }
    println();
  }
  
  void drugTraffic( LawEnforcement l ){
    if ( this.inJail == true )
      println( this.name, "is in jail. They can't perform any criminal activities." );
    else if( this.intelligence >= 9 && this.intimidation >= 4  ){
      if ( l.occupation == "FBI" ){
        if( this.intelligence > l.intelligence ){
           println( this.streetName, "has started selling drugs locally.", l.name, "can't find any leads to arrest", this.streetName + "." );
           this.streetPoints += 3;
           l.fedPoints -= 3;
        }
        else{
            println( this.streetName, "was caught selling drugs in an alleyway by", l.name + ".", this.streetName, "has been taken to jail." );
            this.streetPoints -= 4;
            l.fedPoints += 3;
            this.inJail = true;
        }
      }
      else{
        println( this.streetName, "has started selling drugs locally.", l.name, "can't find any leads to arrest", this.streetName + "." );
        this.streetPoints += 3;
      }
    }
    else{
       println( this.streetName, "tried selling drugs but wasn't succesful. I guess they're not much of an entrepreneur." );
       this.streetPoints -= 3;
          }
     println();
  }
  
  void murder( LawEnforcement l ){
    if ( this.inJail == true )
      println( this.name, "is in jail. They can't perform any criminal activities." );
    else if( this.intelligence >= 9 && this.coldblooded >= 4 && this.skill >= 8  ){
      if ( l.occupation == "FBI" ){
        if( this.intelligence > l.intelligence ){
           println( this.streetName, "murdered someone they had beef with.", this.streetName, "was able to out smart", l.name, "and avoid get away with it." );
           this.streetPoints += 3;
           l.fedPoints -= 3;
        }
      else{
        println( this.streetName, "was caught by", l.name, "after murdering someone they had beef with.", this.streetName, "has been taken to jail." );
        this.streetPoints -= 4;
        l.fedPoints += 3;
        this.inJail = true;
        }
      }
      else{
        println( this.streetName, "murdered someone they had beef with.", this.streetName, "was able to out smart", l.name, "and get away with it." );
        this.streetPoints += 3;
      }
    }
    else{
       println( this.streetName, "tried murdering someone they had beef with, but they chickened out." );
       this.streetPoints -= 3;
          }
    println();
  }
  
  void fight( Criminal c ){
    if ( this.inJail == true ){
    }
    println(this.streetName, "gets into a fight with", c.streetName + ".", "Who's gonna come out on top?");
    if ( this.strength > c.strength && this.speed >= c.speed && this.intimidation >= c.intimidation ){
      println(this.streetName, "beats up", c.streetName + "!");
      this.streetPoints += 1;
      c.streetPoints -= 1;
    }
    else{
      println(c.streetName, "beats up", this.streetName + "!");
      this.streetPoints -= 1;
      c.streetPoints += 1;
    }
    println();
  }
  
  void snitch(){
    if ( this.snitch == true || this.streetPoints <= 6 ){
      if ( this.inJail == true && this.inGang == true){
        println(this.name, "snitched on someone to get out of jail. Now they must move carefully in the streets, no one likes a rat.");
        this.inGang = false;
        this.inJail = false;
        this.gang.members.remove( this );
        this.streetPoints -= 1;
        this.intimidation -= 1;
      }
      else if( this.inJail == true && this.inGang == false )
        println(this.name, "has no one to snitch on, which is really depressing if you really think about it. :(");
      else{
        println(this.name, "has no reason to snitch on someone because they're not in jail.");
      }
    }
    else{
      println( this.name, "is not a snitch. Put some respect on their name!" );
      this.streetPoints += 2;
     }
    println();
  }
  
  void summary(){
    println( this.name + ", street name", this.streetName, "ended with a total of", this.streetPoints, "points.");
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
  
