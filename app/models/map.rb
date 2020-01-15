class Map < ApplicationRecord
	 before_save :update_lonlat

    def update_lonlat
        lonlat = address_to_lonlat(read_attribute(:address))
        write_attribute(:lonlat, lonlat)
    end

    # 住所を保存用経緯度に変換
    def address_to_lonlat(address)
      result = Geocoder.search(address)
      lonlat = result.first.coordinates
      return lonlat.join(',')
    end
     belongs_to :producer
end
