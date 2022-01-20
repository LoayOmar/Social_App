import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/shared/components/components.dart';
import 'package:social_app/shared/cubit/cubit.dart';
import 'package:social_app/shared/cubit/states.dart';
import 'package:social_app/shared/styles/colors.dart';
import 'package:social_app/shared/styles/icon_broken.dart';


class CommentScreen extends StatelessWidget {
  String? postId;
  int? like;
  int? index;

  CommentScreen({
    required this.postId,
    required this.like,
    required this.index,
  });

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var model = SocialCubit.get(context).posts[index!];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            IconBroken.Arrow___Left_2,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              size: 30,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: BlocConsumer<SocialCubit, SocialStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                '${model.image}',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '${model.name}',
                                        style: TextStyle(
                                          height: 1.4,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.check_circle,
                                        color: defaultColor,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${model.dateTime}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                          height: 1.4,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey[300],
                          ),
                        ),
                        Text(
                          '${model.text}',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        /*Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                    top: 5,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            end: 6,
                          ),
                          child: Container(
                            height: 25,
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              child: Text(
                                '#software',
                                style:
                                    Theme.of(context).textTheme.caption!.copyWith(
                                          color: defaultColor,
                                        ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            end: 6,
                          ),
                          child: Container(
                            height: 25,
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              child: Text(
                                '#flutter',
                                style:
                                    Theme.of(context).textTheme.caption!.copyWith(
                                          color: defaultColor,
                                        ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),*/
                        if (model.postImage != '')
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 140,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    '${model.postImage}',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        IconBroken.Heart,
                                        size: 16.0,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${SocialCubit.get(context).likes[index!]}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        IconBroken.Chat,
                                        size: 16.0,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${SocialCubit.get(context).comments[postId]?.length ?? 0} Comment',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                if(SocialCubit.get(context).comments.containsKey(postId))
                  ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildCommentItem(model, context, SocialCubit.get(context).comments[postId]![index]['comment']),
                  itemCount: SocialCubit.get(context).comments[postId]!.length,
                ),
              ],
            ),
          );
        },
      ),
      bottomSheet: Container(
        height: 45,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                '${SocialCubit.get(context).userModel!.image}',
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextFormField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: 'Write a Comment ...',
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                if(textController.text.isNotEmpty){
                  SocialCubit.get(context).addComment(postId!, textController.text);
                  textController.clear();
                } else {
                  showToast(text: 'Please Enter Comment First.', state: ToastStates.ERROR);
                }

              },
              icon: Icon(
                IconBroken.Send,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCommentItem(model, context, comment) => Padding(
        padding: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Card(
          elevation: 5,
          color: Colors.grey[100],
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        '${model.image}',
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${model.name}',
                                style: TextStyle(
                                  height: 1.4,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.check_circle,
                                color: defaultColor,
                                size: 16,
                              ),
                            ],
                          ),
                          Text(
                            '${model.dateTime}',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      height: 1.4,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    '${comment}',
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
