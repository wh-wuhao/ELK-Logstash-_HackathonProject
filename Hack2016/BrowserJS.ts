......
ngAfterViewInit() {
    setTimeout(()=> {
      this._http.post('http://127.0.0.1:8080/perf',
        {
          "performance": performance.timing,
          "Page": 'Main_Page',
          //"clientip" : '216.160.66.66'
           "clientip" : Math.random()>0.5 ? '88.86.226.88':'216.160.66.66'
        }
      )
        .toPromise()
        .then(
          res=>console.log(res)
        )
    }, 500);
  }
.......
