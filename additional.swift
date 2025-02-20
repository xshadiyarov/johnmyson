struct Additional {
        
    struct Header {
        let title: String?
        let icon: RemoteImageResource
    }
    
    struct Footer {
        let title: String
        let value: String
    }
    
    let name: String?
    let destAmount: String?
    let destCurrency: String?
    let destBank: String?
    let conversionRate: Double?
    let date: String?
    let receiverPan: String?
    let senderPan: String?
    let senderPhone: String?
    let account: String?
    let mfo: String?
    let purpose: String?
    let from: String?
    let loanId: String?
    let early: Bool?
    let header: Header?
    let items: [InvoiceItem]
    let footer: Footer?
    let currency: String?
}

struct InvoiceItem {
    let key: String
    let value: String
    let icon: String
}

extension InvoiceItem: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case key, value, icon
    }
    
    init(from decoder: Decoder) throws {
        key = decoder[CodingKeys.key]
        value = decoder[CodingKeys.value]
        icon = decoder[CodingKeys.icon]
    }
}

struct RemoteImageResource: Hashable {
    
    struct Links: Hashable {
        let light: String
        let dark: String
        
        init(light: String = .empty, dark: String = .empty) {
            self.light = light
            self.dark = dark
        }
    }
    
    let id: String
    let name: String
    let type: String
    let links: Links
    
    init(id: String = UUID().uuidString, name: String = .empty, type: String = .empty, links: Links = .init()) {
        self.id = id
        self.name = name
        self.type = type
        self.links = links
    }
}

extension RemoteImageResource: Codable {
    
    enum CodingKeys: String, CodingKey {
        case id, name, type, links
    }
    
    init(from decoder: Decoder) throws {
        id = decoder[CodingKeys.id]
        name = decoder[CodingKeys.name]
        type = decoder[CodingKeys.type]
        links = try decoder[CodingKeys.links]
    }
}

extension RemoteImageResource.Links: Codable {
    
    enum CodingKeys: String, CodingKey {
        case light, dark
    }
    
    init(from decoder: Decoder) throws {
        light = decoder[CodingKeys.light]
        dark = decoder[CodingKeys.dark]
    }
}

struct GniDataItem {
    let dateTime: String
    let fiscalSign: String
    let qrLink: String
    let terminalId: String
    let message: String
}


struct AltActionConfig {
    let component: String // Реферите к компоненту как удобно
    let props: 
}
