class Contact < ApplicationRecord
    belongs_to :kind
    has_many :phones
    accepts_nested_attributes_for :phones
    def author
      "Vicente Simão"
    end

    def kind_description
      self.kind.description
    end
    def as_json(options={})
        super(
            root: true,
            methods: [:author, :kind_description],
            include: { 
                kind: {
                    only: :description
                },
                phones: {
                    only: :number
                } 
            }
        )
    end
end
