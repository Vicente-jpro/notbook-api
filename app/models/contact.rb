class Contact < ApplicationRecord
    def author
      "Vicente Simão"
    end

    def as_json(options={})
        super(
            root: true,
            methods: :author, 
            include: [:kind_id]
        )
    end
end
