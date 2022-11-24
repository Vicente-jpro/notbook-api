class Contact < ApplicationRecord
    belongs_to :kind
    has_many :phones
    has_one :address

    accepts_nested_attributes_for :phones, allow_destroy: true
    accepts_nested_attributes_for :address, update_only: true

    # def author
    #   "Vicente Simão"
    # end

    # def kind_description
    #   self.kind.description
    # end
    # def as_json(options={})
    #     super(
    #         root: true,
    #         methods: [:author, :kind_description],
    #         include: { 
    #             kind: {
    #                 only: [:id, :description]
    #             },
    #             phones: {
    #                 only: [:id, :number]
    #             },
    #             address: {
    #                 only: [:id, :street, :city]
    #             }
    #         }
    #     )
    # end
end
