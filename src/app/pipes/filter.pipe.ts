import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filterSearch'
})
export class FilterPipe implements PipeTransform {

  transform(value: any[], search: string) {
    if(search.length > 0){
      return value.filter(something => something.name.toLowerCase().includes(search.toLowerCase()));
    } else{
      return value;
      
    }
  }

}
