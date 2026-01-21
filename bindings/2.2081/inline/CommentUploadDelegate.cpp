#include <Geode/Geode.hpp>

void CommentUploadDelegate::commentUploadFinished(int parentID) {}

void CommentUploadDelegate::commentUploadFailed(int parentID, CommentError errorType) {}

void CommentUploadDelegate::commentDeleteFailed(int id, int parentID) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

