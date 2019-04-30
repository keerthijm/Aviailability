import React, { Component } from 'react';

export class FetchCities extends Component {
    static displayName = FetchCities.name;

  constructor (props) {
    super(props);
    this.state = { forecasts: [], loading: true };

      fetch('api/Cities')
      .then(response => response.json())
      .then(data => {
        this.setState({ cities: data, loading: false });
      });
  }

    static renderForecastsTable(cities) {
    return (
      <table className='table table-striped'>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>          
          </tr>
        </thead>
        <tbody>
                {cities.map(cities =>
                    <tr key={cities.cityId}>
                        <td>{cities.cityId}</td>
                        <td>{cities.cityName}</td>            
            </tr>
          )}
        </tbody>
      </table>
    );
  }

  render () {
    let contents = this.state.loading
      ? <p><em>Loading...</em></p>
        : FetchCities.renderForecastsTable(this.state.cities);

    return (
      <div>
        <h1>Cities</h1>
        <p>This component demonstrates fetching cities from the server.</p>
        {contents}
      </div>
    );
  }
}
