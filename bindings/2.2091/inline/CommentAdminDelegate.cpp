#include <Geode/binding/CommentAdminDelegate.hpp>

void CommentAdminDelegate::adminDeleteCommentsFinished(int) {}
void CommentAdminDelegate::adminDeleteCommentsFailed() {}
void CommentAdminDelegate::adminCommentBanFinished() {}
void CommentAdminDelegate::adminCommentBanFailed() {}
void CommentAdminDelegate::adminCommentUnbanFinished() {}
void CommentAdminDelegate::adminCommentUnbanFailed() {}
void CommentAdminDelegate::adminUploadBanFinished() {}
void CommentAdminDelegate::adminUploadBanFailed() {}
void CommentAdminDelegate::adminUploadUnbanFinished() {}
void CommentAdminDelegate::adminUploadUnbanFailed() {}
void CommentAdminDelegate::adminMessageBanFinished() {}
void CommentAdminDelegate::adminMessageBanFailed() {}
void CommentAdminDelegate::adminMessageUnbanFinished() {}
void CommentAdminDelegate::adminMessageUnbanFailed() {}
void CommentAdminDelegate::adminFreezeFinished() {}
void CommentAdminDelegate::adminFreezeFailed() {}
void CommentAdminDelegate::adminUnfreezeFinished() {}
void CommentAdminDelegate::adminUnfreezeFailed() {}
void CommentAdminDelegate::adminTrendingBanFinished() {}
void CommentAdminDelegate::adminTrendingBanFailed() {}
void CommentAdminDelegate::adminTrendingUnbanFinished() {}
void CommentAdminDelegate::adminTrendingUnbanFailed() {}
void CommentAdminDelegate::adminNameLockFinished() {}
void CommentAdminDelegate::adminNameLockFailed() {}
void CommentAdminDelegate::adminNameUnlockFinished() {}
void CommentAdminDelegate::adminNameUnlockFailed() {}
void CommentAdminDelegate::adminUserHistoryFinished(int, cocos2d::CCArray*, int, int, int) {}
void CommentAdminDelegate::adminUserHistoryFailed(int) {}
void CommentAdminDelegate::adminReportedContentFinished(int, cocos2d::CCArray*, AdminReportedMeta const&) {}
void CommentAdminDelegate::adminReportedContentFailed(int) {}
void CommentAdminDelegate::adminClearReportsFinished(int, int) {}
void CommentAdminDelegate::adminClearReportsFailed(int) {}
void CommentAdminDelegate::adminReportQueueFinished(cocos2d::CCArray*, int, int, int) {}
void CommentAdminDelegate::adminReportQueueFailed() {}
void CommentAdminDelegate::adminAbuseInfoFinished(int, cocos2d::CCArray*, AdminAbuseMeta const&) {}
void CommentAdminDelegate::adminAbuseInfoFailed(int) {}
void CommentAdminDelegate::adminAccountReviewFinished(int, AccountReviewCard const&) {}
void CommentAdminDelegate::adminAccountReviewFailed(int) {}
void CommentAdminDelegate::adminCloseCaseFinished(int, int, bool) {}
void CommentAdminDelegate::adminCloseCaseFailed(int) {}