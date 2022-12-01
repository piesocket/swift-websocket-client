# Swift WebSockets Client

PieSocket Channels SDK for WebSockets written in Swift.
Supports cross-platform Xcode projects for:  iOS, iPad, Mac, etc.

This SDK can be used to communicate with any third-party WebSocket server,
and implements auto-reconnection among other best WebSocket practices.


## Add to project
Simply import this github repository into your Xcode project.

 - In your Xcode project, go to File > Add packages
 - Enter `https://github.com/piesocket/websocket-swift-client` in the search box
 - Click "Add package"


## Usage

### Stand-alone Usage
Create a Channel instance as shown below.
```dart
let channel: Channel = Channel(webSocketURL: "wss://example.com", enabledLogs: true);
channel.listen(eventName: "system:connected", callback: {event in
    print("WebSocket Connected!");

    //Send data
    channel.send(text: "Hello")
})
```

### Use PieSocket's managed WebSocket server
Use following code to create a Channel with PieSocket's managed WebSocket servers.

Get your API key and Cluster ID here: [Get API Key](https://www.piesocket.com/app/v4/register)

```dart
let options: PieSocketOptions = PieSocketOptions();
options.setClusterId(clusterId: "demo");
options.setApiKey(apiKey: "VCXCEuvhGcBDP7XhiJJUDvR1e1D3eiVjgZ9VRiaV");

let piesocket: PieSocket = PieSocket(pieSocketOptions: options);
let channel: Channel = piesocket.join(roomId: "chat-room");
```


[PieSocket Channels](https://piesocket.com/channels) is scalable WebSocket API service with following features:
  - Authentication
  - Private Channels
  - Presence Channels
  - Publish messages with REST API
  - Auto-scalability
  - Webhooks
  - Analytics
  - Authentication
  - Upto 60% cost savings

We highly recommend using PieSocket Channels over self hosted WebSocket servers for production applications.

## Events
`system:connected` is the event fired when WebSocket connection is ready, get a full list system messages here: [PieSocket System Messages](https://www.piesocket.com/docs/3.0/events#system-events)


## Documentation
For usage examples and more information, refer to: [Official SDK docs](https://www.piesocket.com/docs/3.0/ios-websockets)
