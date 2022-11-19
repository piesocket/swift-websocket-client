# Swift WebSockets Client For Apple

PieSocket Channels SDK for WebSockets written in Swift.


This SDK can be used to communicate with any third-party WebSocket server,
and implements auto-reconnection among other best WebSocket practices.


## Add to project
Simply import this github repository into your Xcode project.

    - In your Xcode project, go to File > Add packages
    - Enter `https://github.com/piesocket/websocket-swift-client` in the search box
    - Click "Add package"


## Usage

### Use PieSocket's managed WebSocket server
Get your API key and Cluster ID here: [Create PieSocket account](https://www.piesocket.com/app/v4/register)

```
let options: PieSocketOptions = PieSocketOptions();
options.setClusterId(clusterId: "demo");
options.setApiKey(apiKey: "VCXCEuvhGcBDP7XhiJJUDvR1e1D3eiVjgZ9VRiaV");

let piesocket: PieSocket = PieSocket(pieSocketOptions: options);
let channel: Channel = piesocket.join(roomId: "chat-room");
```

### Stand-alone Usage
To use with third-party WebSocket servers, skip the initialization part above and create a Channel instance as shown below.

```
let channel: Channel = Channel(webSocketURL: "wss://example.com", enabledLogs: true);
```

[PieSocket Channels](https://piesocket.com/channels) is a managed WebSockets service with following features:
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

## Documentation
For usage examples and more information, refer to: [Official SDK docs](https://www.piesocket.com/docs/3.0/ios-websockets)