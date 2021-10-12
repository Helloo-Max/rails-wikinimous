class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.all
    @lorem_ipsum = ['Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.', 'Vestibulum id ligula porta felis euismod semper.', 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', 'Sed posuere consectetur est at lobortis.Nullam id dolor id nibh ultricies vehicula ut id elit.']
    @lorem_gibson = ['Drone nodality systemic pistol vinyl face forwards car. Free-market chrome voodoo god disposable car pistol neon otaku nodal point dome industrial grade plastic. J-pop tank-traps chrome car alcohol shoes rebar sign industrial grade disposable wristwatch convenience store sunglasses computer bicycle', 'Modem military-grade decay dissident Legba spook 8-bit saturation point numinous neural rebar network cardboard. Table voodoo god drugs rain refrigerator pistol dissident render-farm human. Meta-range-rover fluidity corporation pistol construct rebar apophenia. Drugs military-grade singularity weathered shanty town media dome systema gang neural meta-drone city knife.', 'Futurity hotdog sign numinous woman dolphin systemic. Denim corrupted cartel construct uplink nano-shanty town dead wonton soup Chiba dissident fetishism boy BASE jump warehouse soul-delay car. Tokyo corrupted convenience store wonton soup assassin realism boat-space rebar sentient stimulate human sunglasses voodoo god. Marketing soul-delay girl nodal point woman footage vehicle euro-pop human Chiba paranoid. Neural tiger-team geodesic tower marketing-space knife crypto. Table towards cardboard 3D-printed BASE jump assault math-meta-footage Shibuya San Francisco rifle tattoo chrome assassin. Cartel otaku crypto-futurity refrigerator cardboard papier-mache plastic order-flow gang apophenia augmented reality into-ware meta.', 'Courier paranoid fluidity fetishism weathered vinyl j-pop sentient Chiba. City stimulate shrine corporation savant human BASE jump. Otaku decay stimulate garage fetishism faded fluidity rebar wonton soup hotdog convenience store. Advert media disposable construct tower engine semiotics into neon Kowloon car city. Cartel receding media weathered disposable knife modem tattoo boat digital urban geodesic cyber. Film DIY sub-orbital realism singularity sunglasses franchise neural spook boat meta-bicycle nodality uplink nano-camera skyscraper. Beef noodles tiger-team girl physical tank-traps Tokyo soul-delay wristwatch faded sign denim cyber-sentient stimulate narrative into range-rover.', 'Rain drugs sunglasses stimulate neural otaku free-market dissident render-farm order-flow papier-mache jeans car office nano-man. Table otaku geodesic Shibuya rebar shrine assault face forwards euro-pop towards voodoo god. 3D-printed assault dead boat knife futurity sensory dissident. Free-market Shibuya augmented reality systemic dissident film dolphin skyscraper range-rover plastic tower boat shrine neural smart-grenade. Garage courier claymore mine military-grade woman Shibuya rifle. Silent Chiba soul-delay advert nodal point chrome dome lights savant Tokyo otaku disposable decay weathered-space systemic. Media nodality assassin vinyl cardboard corporation chrome alcohol apophenia singularity advert Tokyo faded plastic bomb rifle. Tokyo camera refrigerator silent monofilament spook neon papier-mache Legba dissident convenience store network tattoo. 8-bit j-pop systemic Legba San Francisco silent office vehicle assassin cartel Kowloon convenience store dissident jeans realism.']
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.save
    redirect_to article_path(article)
  end

  def edit; end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to article_path(@article)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
