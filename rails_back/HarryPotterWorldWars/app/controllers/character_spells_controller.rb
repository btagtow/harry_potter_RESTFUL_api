class CharacterSpellsController < ApplicationController
    before_action :find_character_spell, only: [:show, :destroy]

    def index
        render json: CharacterSpell.all
    end
    
    def show
        render json: @character_spell
    end
    
    def destroy
        @character_spell.destroy_all
    end

    private
    def find_character_spell
        @character_spell = CharacterSpell.where(:character_id => params[:id])
    end

    def find_character_params
        params.permit(:character_id, :spell_id)
    end


end
