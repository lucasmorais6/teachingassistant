import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
<<<<<<< HEAD
import { RouterModule }   from '@angular/router';
import { HttpClientModule } from '@angular/common/http';
=======
>>>>>>> dbc0756... elementos do formulario para cadastro de alunos

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MetasComponent } from './metas.component';
import { AlunosComponent } from './alunos.component';
import { AlunoService } from './aluno.service';

@NgModule({
  declarations: [
    AppComponent,
    MetasComponent,
    AlunosComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
<<<<<<< HEAD
    FormsModule,
    HttpClientModule, 
    RouterModule.forRoot([
      {
        path: 'metas',
        component: MetasComponent
      },
      {
        path: 'alunos',
        component: AlunosComponent
      }
    ])
=======
    FormsModule
>>>>>>> dbc0756... elementos do formulario para cadastro de alunos
  ],
  providers: [AlunoService],
  bootstrap: [AppComponent]
})
export class AppModule { }
