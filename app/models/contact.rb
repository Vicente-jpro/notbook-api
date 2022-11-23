class Contact < ApplicationRecord
    belongs_to :kind
    has_many :phones
    accepts_nested_attributes_for :phones, allow_destroy: true
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
                    only: [:id, :description]
                },
                phones: {
                    only: [:id, :number]
                } 
            }
        )
    end
end
