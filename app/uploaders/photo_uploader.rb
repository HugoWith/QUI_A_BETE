class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  IDENTIFIERS = [
    "image/upload/v1574170892/ngpxxxoop8a9l11wybbp.jpg",
    "image/upload/v1574171309/rslj5flsvsfxuefoscdz.jpg",
    "image/upload/v1574171419/id07hchdsbsplsxvf2cw.jpg",
    "image/upload/v1574172284/itxcuoo0boiwhepb9zzm.jpg",
    "image/upload/v1574185427/dbid7sn4vajnxb0sjjuz.jpg",
    "image/upload/v1574185425/az1uuiwvuothal4ewmps.jpg",
    "image/upload/v1574185424/rq03wkinuqqedrcfgj4g.jpg",
    "image/upload/v1574185423/alpwntqhsjyfux6oazus.jpg",
    "image/upload/v1574185422/fvlozunaiuzuoi8fphpx.jpg",
    "image/upload/v1574271539/vzrhcflzxkwfutvb6qau.jpg",
    "image/upload/v1574271537/y3if8gcvatlmtgsmyp1y.png",
    "image/upload/v1574271538/ln4p2snia2t1bd5czjfa.jpg",
    "image/upload/v1574930440/morae2hvixxjbefvw4so.png",
    "image/upload/v1574271535/lekgu29n86puqbwjbxa5.png",
    "image/upload/v1574271534/jwz6hdwrozu8rjwycaam.jpg"
  ]

  def remove!
    # ap self.identifier
    # ap IDENTIFIERS
    super unless IDENTIFIERS.map { |id| id.split('/').last }.include?(self.identifier.split('/').last)
  end

  # Remove everything else
  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url(*args)
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    ["https://images.unsplash.com/photo-1569448829586-2e4995a3d607?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1277&q=80",
     "https://images.unsplash.com/photo-1568214379698-8aeb8c6c6ac8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
     "https://images.unsplash.com/photo-1551501825-6214d244e824?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=926&q=80",
     "https://images.unsplash.com/photo-1566410834486-857b30cff4ab?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
     "https://images.unsplash.com/photo-1564107628966-daff03746bee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
     "https://images.unsplash.com/photo-1549490349-8643362247b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
     "https://images.unsplash.com/photo-1557841442-d1924a792682?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
     "https://images.unsplash.com/photo-1558244402-286dd748c593?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
     "https://images.unsplash.com/photo-1525622535334-df26d0b648a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"].sample
    # "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

end
  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_whitelist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
