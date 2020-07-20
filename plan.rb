# plan
# 1. Extract Nouns for classes
  # Read the description and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

  # Player
  # Game

# 2. write their roles
  #  what is role of each class? describe the role that class will play
  # (Remember that objects are important for two things:
    # State: Storing data describing themselves (variables)
    # Behavior: Defining actions that can be performed on them (methods))


  # write down the methods for each class while also speaking to the following points:
    # what info is relevant to each class?
    # what will they need in order to be initialized?
    # what public methods will be defined on them?


    # which class will container the game loop(where each instance of the loop is the other platers turn)
    # which class should manage who the current_player is?
    # which class(es) will contain user input/output and which will not have any?


    # Player: will hold the info about the players
      # a method number_of_lives - variable lives = they start with 3 lives, lose life if they don't get the question right
      # initialize: lives
      # superclass?
    

    # Game: will have a method questions - that will generate the random math questions.
    # contain user input/output
    # (can this be a subclass of player and then turn can be a subclass of game??)
    # initialize : current_turn
    


    # turn: class ? but it's a verb - so a method of the game
      # display results at the end of the turn - get the number of lives they have
      # should determine the current_player
      # contain user input/output


