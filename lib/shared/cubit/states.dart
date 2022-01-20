abstract class SocialStates {}

class SocialInitialStates extends SocialStates {}

class SocialGetUserLoadingStates extends SocialStates {}

class SocialGetUserSuccessStates extends SocialStates {}

class SocialGetUserErrorStates extends SocialStates {
  final String error;

  SocialGetUserErrorStates(this.error);
}

class SocialGetAllUsersLoadingStates extends SocialStates {}

class SocialGetAllUsersSuccessStates extends SocialStates {}

class SocialGetAllUsersErrorStates extends SocialStates {
  final String error;

  SocialGetAllUsersErrorStates(this.error);
}

class SocialChangeBottomNavState extends SocialStates {}

class SocialNewPostState extends SocialStates {}

class SocialProfileImagePickedSuccessState extends SocialStates {}

class SocialProfileImagePickedErrorState extends SocialStates {}

class SocialCoverImagePickedSuccessState extends SocialStates {}

class SocialCoverImagePickedErrorState extends SocialStates {}

class SocialUploadProfileImageSuccessState extends SocialStates {}

class SocialUploadProfileImageErrorState extends SocialStates {}

class SocialUploadCoverImageSuccessState extends SocialStates {}

class SocialUploadCoverImageErrorState extends SocialStates {}

class SocialUserUpdateProfileLoadingState extends SocialStates {}

class SocialUserUpdateCoverLoadingState extends SocialStates {}

class SocialUserUpdateLoadingState extends SocialStates {}

class SocialUserUpdateErrorState extends SocialStates {}

// Create Post
class SocialCreatePostLoadingState extends SocialStates {}

class SocialCreatePostSuccessState extends SocialStates {}

class SocialCreatePostErrorState extends SocialStates {}

class SocialPostImagePickedSuccessState extends SocialStates {}

class SocialPostImagePickedErrorState extends SocialStates {}

class SocialRemovePostImageState extends SocialStates {}

//Get Posts
class SocialGetPostsLoadingStates extends SocialStates {}

class SocialGetPostsSuccessStates extends SocialStates {}

class SocialGetPostsErrorStates extends SocialStates {
  final String error;

  SocialGetPostsErrorStates(this.error);
}

//Likes
class SocialLikePostSuccessStates extends SocialStates {}

class SocialLikePostErrorStates extends SocialStates {
  final String error;

  SocialLikePostErrorStates(this.error);
}

class SocialRemoveLikeSuccessStates extends SocialStates {}

class SocialRemoveLikeErrorStates extends SocialStates {
  final String error;

  SocialRemoveLikeErrorStates(this.error);
}

//Comment
class SocialAddCommentSuccessStates extends SocialStates {}

class SocialAddCommentErrorStates extends SocialStates {
  final String error;

  SocialAddCommentErrorStates(this.error);
}

//Messages
class SocialSendMessageSuccessStates extends SocialStates {}

class SocialSendMessageErrorStates extends SocialStates {}

class SocialGetMessagesSuccessStates extends SocialStates {}

class SocialGetMessagesErrorStates extends SocialStates {}