import React ,{Component} from 'react';
import ReactMapGL from 'react-map-gl'
class App extends Component {
    state = {
            viewport: {
              width: "100vw",
              height: "100vh",
              latitude: 42.430472,
              longitude: -123.334102,
              zoom: 16
            }
          };



 render() {
 return(<div className="App">
            <ReactMapGL {...this.state.viewport} onViewportChange={(viewport =>
              this.setState(viewport))} mapboxApiAcessToken='pk.eyJ1IjoiZ2FlbGplcm9wIiwiYSI6ImNrb2k2OWJ1ZjB1ODgycHBuMzlzc2Z4ZDcifQ.BgdkXfCwq1F4wooVhN2uSQ'>
            </ReactMapGL>

   </div>

  );



 }


}
export default App;
