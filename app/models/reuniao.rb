class Reuniao < ActiveRecord::Base
  belongs_to :local
  belongs_to :ata
  belongs_to :pauta
end
