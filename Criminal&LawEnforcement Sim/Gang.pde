class Gang {
  
  String gName;
  ArrayList<Criminal> members;
  
  Gang( String s ){
    this.gName = s;
    members = new ArrayList<Criminal>(0);
  }
  
  void addMember( Criminal c ){
    if ( c.independence <= 4 ){
      members.add(c);
      c.inGang = true;
      c.gang = this;
      println(c.name + ", street name", c.streetName, "has joined", this.gName + ".");
      println();
    }
    else{
      println(c.name, "is a lone wolf, the thought of being in a group makes them cringe. They will forever be lonely.");
      println();
    }
  }
  
  void printMembers(){
    String t = "Members of " + this.gName;
    println( t );
    println(header( t ));
    
    for(int i = 0; i < members.size(); i++){
      Criminal c = members.get(i);
      println(c.name, "\t", "Street Name:", c.streetName);
    }
    println();
  } 
  
  void brawl( Gang g ){
    println(this.gName, "is gonna have an all out brawl with", g.gName + ".");
    int g1Points = 0;
    int g2Points = 0;
    
    for (int i = 0; i < this.members.size(); i++ ){
      Criminal c = this.members.get(i);
      if( c.inJail == true ){
      }
      else{
      g1Points += c.strength;
      g1Points += c.intelligence;
      g1Points += c.skill;
      g1Points += c.speed;
      g1Points += c.coldblooded;
      g1Points += c.intimidation;
      g1Points += c.streetPoints;
      }
    }
    
    for (int i = 0; i < g.members.size(); i++ ){
      Criminal c = g.members.get(i);
      if( c.inJail == true ){
      }
      else{
      g2Points += c.strength;
      g2Points += c.intelligence;
      g2Points += c.skill;
      g2Points += c.speed;
      g2Points += c.coldblooded;
      g2Points += c.intimidation;
      g2Points += c.streetPoints;
      }
    }
    
    if( g1Points == g2Points )
      println("The brawl ended in a draw. Both parties put up a great fight, but in the end everyone was knocked out unconcious.");
    else if ( g1Points > g2Points ){
      println(this.gName, "came out on top in the brawl!");
      for( int i = 0; i < this.members.size(); i++ ){
        Criminal c = this.members.get(i);
        c.streetPoints += 1;
      }
    }
    else{
      println(g.gName, "came out on top in the brawl!");
      for( int i = 0; i < g.members.size(); i++ ){
        Criminal c = g.members.get(i);
        c.streetPoints += 1;
      }
    }
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
