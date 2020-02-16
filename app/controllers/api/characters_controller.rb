class Api::CharactersController < ApplicationController
  def index
    @characters = Character.all
    render "index.json.jb"
  end

  def create
    @character = character.new(
      name: params[:name], 
      class: params[:class],
      level: params[:level],
      background: params[:background],
      strength: params[:strength],
      dexterity: params[:dexterity],
      constitution: params[:constitution],
      intelligence: params[:intelligence],
      wisdom: params[:wisdom],
      charisma: params[:charisma],
      health: params[:health],
      armor_class: params[:armor_class],
      initiative: params[:initiative],
      speed: params[:speed],
      traits: params[:traits],
      ideals: params[:ideals],
      bonds: params[:bonds],
      flaws: params[:flaws],
      age: params[:age],
      weight: params[:weight],
      height: params[:height],
      gender: params[:gender],
      race: params[:race],
      alignment: params[:alignment]
      )
    @character.save
    render "show.json.jb"
  end

  def show
    @character = character.find(params[:id])
    render "show.json.jb"
  end

  def update
    @character = character.find(params[:id])
    @character.name = params[:name] || @character.name 
    @character.class = params[:class] || @character.class 
    @character.level = params[:level] || @character.level 
    @character.background = params[:background] || @character.background 
    @character.strength = params[:strength] || @character.strength
    @character.dexterity = params[:dexterity] || @character.dexterity 
    @character.constitution = params[:constitution] || @character.constitution 
    @character.intelligence = params[:intelligence] || @character.intelligence 
    @character.wisdom = params[:wisdom] || @character.wisdom 
    @character.charisma = params[:charisma] || @character.charisma
    @character.health = params[:health] || @character.health 
    @character.armor_class = params[:armor_class] || @character.armor_class 
    @character.initiative = params[:initiative] || @character.initiative 
    @character.speed = params[:speed] || @character.speed 
    @character.traits = params[:traits] || @character.traits 
    @character.ideals = params[:ideals] || @character.ideals 
    @character.bonds = params[:bonds] || @character.bonds 
    @character.flaws = params[:flaws] || @character.flaws 
    @character.age = params[:age] || @character.age 
    @character.weight = params[:weight] || @character.weight 
    @character.height = params[:height] || @character.height 
    @character.gender = params[:gender] || @character.gender 
    @character.race = params[:race] || @character.race 
    @character.alignment = params[:alignment] || @character.alignment 
    @character.save
    render "show.json.jb"
  end

  def destroy
    character = character.find(params[:id])
    character.destroy
    render json: {message: "character destroyed."}
  end

end
