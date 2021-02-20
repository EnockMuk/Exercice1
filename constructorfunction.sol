pragma solidity ^0.7.0;

contract A {
    
      uint index;
      string liste;
      address proprio;
      
      constructor(){
          
          proprio= msg.sender;
      }
      
      struct Utilisateur {
          
          uint identifiant;
          string nom;
          uint position;    
      }
      
      Utilisateur public utilisateur;
      Utilisateur[] public joueurs;
      
      mapping(string=>Utilisateur)public fonctionnaires;

      function stockElement(string memory _nom,uint _position)public {
          require(msg.sender==proprio,"tu n'es pas le proprio");
          utilisateur= Utilisateur(0,_nom,1);
          joueurs.push(Utilisateur(index,_nom,_position));
          fonctionnaires[liste]=Utilisateur(index,_nom,_position);
          index++;  
      }
}