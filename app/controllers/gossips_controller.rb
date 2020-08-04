class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def new
    @gossips = Gossip.new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content])
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    if @gossip.save
    #banner_alert[:success] = "Trop cool!👌 ✅ Ton Gossip a été publié ✅👌" ()
    #redirect_to :controller => 'static_pages', :action => 'index' (basé sur modèle trouvé sur stackoverflow : redirect_to :controller => 'controllername', :action => 'actionname')
    else
    #banner_alert[:failure] = "❌ Tu n'as pas rempli le formulaire correctement... ❌ 👉 Essaie encore"
    #render :action => 'new'
    end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end
