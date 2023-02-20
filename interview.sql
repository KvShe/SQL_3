create database if not exists homework;

drop table if exists posts;
drop table if exists users;
drop table if exists clients;

create table users
(
    id    int auto_increment primary key,
    login varchar(255),
    pass  varchar(255),
    male  int
);

create table clients
(
    id    int auto_increment primary key,
    login varchar(255),
    pass  varchar(255),
    male  int
);

insert users (login, pass, male) values ('alex', '$2y$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);
insert users (login, pass, male) values ('mikle', '$ws$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);
insert users (login, pass, male) values ('olia', '$2y$10$88zbbckljklstigtqbkiluijjunbez5wqji4rjgkksnfzon5kh14y', 2);
insert users (login, pass, male) values ('tom', '$2y$20$6szbbcnrnklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh20y', 1);
insert users (login, pass, male) values ('margaret', '$2y$20$6szbbcnrnklstigtqbkiluijjunbez4wqiu4rjgkksnfzon5kh20y', 2);
insert users (login, pass, male) values ('alex', '$2y$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);

insert clients (login, pass, male) values ('alexander', '$2y$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);
insert clients (login, pass, male) values ('mikle', '$ws$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);
insert clients (login, pass, male) values ('olia', '$2y$10$88zbbckljklstigtqbkiluijjunbez5wqji4rjgkksnfzon5kh14y', 2);
insert clients (login, pass, male) values ('dmitry', '$2y$20$6szbbcnrnklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh20y', 1);
insert clients (login, pass, male) values ('margaret', '$2y$20$6szbbcnrnklstigtqbkiluijjunbez4wqiu4rjgkksnfzon5kh20y', 2);
insert clients (login, pass, male) values ('leonid', '$2y$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);
insert clients (login, pass, male) values ('mikle', '$ws$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);
insert clients (login, pass, male) values ('olga', '$2y$10$88zbbckljklstigtqbkiluijjunbez5wqji4rjgkksnfzon5kh14y', 2);
insert clients (login, pass, male) values ('tom', '$2y$20$6szbbcnrnklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh20y', 1);
insert clients (login, pass, male) values ('masha', '$2y$20$6szbbcnrnklstigtqbkiluijjunbez4wqiu4rjgkksnfzon5kh20y', 2);
insert clients (login, pass, male) values ('alex', '$2y$10$6szbbcmenklstigtqbkiluijjunbez5wqiu4rjgkksnfzon5kh14y', 1);

create table posts
(
    id        int auto_increment primary key,
    title     varchar(255),
    full_text text,
    user_id   int
);

insert posts (title, full_text, user_id) values ('lorem ipsum', 'lorem ipsum is simply dummy text of the printing and typesetting industry. lorem ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. it has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. it was popularised in the 1960s with the release of letraset sheets containing lorem ipsum passages, and more recently with desktop publishing software like aldus pagemaker including versions of lorem ipsum.', 1);
insert posts (title, full_text, user_id) values ('why do we use it?', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using lorem ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''content here, content here'', making it look like readable english. many desktop publishing packages and web page editors now use lorem ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 2);
insert posts (title, full_text, user_id) values ('where does it come from?', 'contrary to popular belief, lorem ipsum is not simply random text. it has roots in a piece of classical latin literature from 45 bc, making it over 2000 years old. richard mcclintock, a latin professor at hampden-sydney college in virginia, looked up one of the more obscure latin words, consectetur, from a lorem ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. lorem ipsum comes from sections 1.10.32 and 1.10.33 of "de finibus bonorum et malorum" (the extremes of good and evil) by cicero, written in 45 bc. this book is a treatise on the theory of ethics, very popular during the renaissance. the first line of lorem ipsum, "lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. the standard chunk of lorem ipsum used since the 1500s is reproduced below for those interested. sections 1.10.32 and 1.10.33 from "de finibus bonorum et malorum" by cicero are also reproduced in their exact original form, accompanied by english versions from the 1914 translation by h. rackham.', 3);
insert posts (title, full_text, user_id) values ('where can i get some?', 'there are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. if you are going to use a passage of lorem ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. all the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. it uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable. the generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4);
insert posts (title, full_text, user_id) values ('mauris fermentum', 'mauris fermentum sapien feugiat, facilisis augue ac, volutpat eros. vestibulum faucibus urna arcu, eget dignissim libero varius ut. etiam sit amet massa elit. aliquam vitae tellus turpis. vivamus tempor at odio vitae ullamcorper. vivamus elementum fermentum mauris nec bibendum. etiam ut felis eu purus fermentum fringilla eu nec lectus. pellentesque porta eros sit amet lectus semper, at tristique leo interdum. duis in elementum odio. morbi at ultrices velit. vestibulum ut dui lacus.', 5);
insert posts (title, full_text, user_id) values ('vivamus sagittis dolor', 'vivamus sagittis dolor eget finibus consequat. duis imperdiet aliquam felis, sed auctor libero finibus eu. duis sodales nisi ut semper accumsan. aliquam ultricies nec sapien eu eleifend. etiam ultricies, sem non eleifend tincidunt, dui lacus viverra felis, eget pulvinar sem diam ac nibh. vestibulum hendrerit, ante eu porttitor viverra, elit nulla gravida ex, nec scelerisque purus magna malesuada turpis. fusce eu nunc condimentum augue malesuada cursus vitae pulvinar leo. fusce semper et risus at congue. nullam tristique ac mauris sed tristique. donec eu dolor non mi rutrum pulvinar quis quis ex. nulla efficitur odio vel turpis iaculis volutpat. proin aliquam blandit purus, at eleifend felis ullamcorper vitae.', 6);
insert posts (title, full_text, user_id) values ('aenean aliquam', 'aenean aliquam sem ut tristique commodo. aenean sed tincidunt elit, nec consectetur est. phasellus sagittis erat non mi dignissim semper. donec libero eros, sodales eu sapien eget, rhoncus viverra urna. donec augue magna, faucibus at metus in, fringilla consequat sem. etiam iaculis sagittis feugiat. etiam eleifend ipsum vulputate mi egestas imperdiet. duis consectetur diam pulvinar lectus pulvinar, a scelerisque dolor sodales. aliquam at velit et sapien viverra dignissim.', 7);
insert posts (title, full_text, user_id) values ('etiam ornare', 'etiam ornare augue vitae leo bibendum tristique. nam libero augue, fermentum eu velit at, ultricies varius ligula. nam mi nisl, tristique sed enim imperdiet, blandit aliquet velit. mauris ullamcorper sodales urna vitae venenatis. integer diam dolor, efficitur in orci in, semper bibendum nulla. morbi at mattis odio. donec rhoncus, sem eget varius aliquet, mauris magna egestas lectus, eget gravida ante justo sed urna.', 2);
insert posts (title, full_text, user_id) values ('sed ac ultricies eros', 'sed ac ultricies eros. aliquam vulputate quam turpis, quis vestibulum sem pretium nec. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. vivamus commodo, velit vitae varius bibendum, elit metus lacinia ligula, sed finibus mauris dui a orci. praesent viverra erat ut faucibus tristique. vestibulum eu nisl quam. vivamus nunc turpis, pretium quis elit et, condimentum varius dolor. fusce aliquet consequat lorem ac gravida. praesent arcu nisl, euismod at velit et, placerat tempor justo. duis non faucibus enim. pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. mauris eu semper ligula.', 3);

-- №1.	используя оператор alter table, установите внешний ключ в одной из таблиц.
alter table posts add foreign key (user_id) references users (id);
describe posts;

-- №2.	без оператора join, верните заголовок публикации, текст с описанием, идентификатор клиента, опубликовавшего публикацию и логин данного клиента.
select title,
       full_text,
       user_id,
       (select login from users where user_id = users.id) as login
from posts
order by user_id;

-- №3.	выполните поиск  по публикациям, автором котоырх является клиент "mikle".
select title,
       (select login from clients where user_id = clients.id) as login
from posts
where user_id = (select id from users where login = 'mikle')
