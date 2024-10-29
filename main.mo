  GNU nano 6.2                                                               main.mo                                                                        actor ChatBot {
    public query func greet(userMessage : Text) : async Text {
        return switch (userMessage) {
            case ("Hello") { "Hi! How can I help you today?" };
            case ("Goodbye") { "Goodbye! Have a great day!" };
            case _ { "I’m sorry, I didn’t understand that." };
        };
    };
};
