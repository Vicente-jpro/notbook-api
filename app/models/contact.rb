class Contact < ApplicationRecord
    belongs_to :kind
    has_many :phones
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
                } 
            }
        )
    end
end
