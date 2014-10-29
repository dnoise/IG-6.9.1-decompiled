.class final Lcom/instagram/android/feed/a/a/aa;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/x;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/a/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/x;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/aa;-><init>(Lcom/instagram/android/feed/a/a/x;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->b(Lcom/instagram/android/feed/a/a/x;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    .line 162
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->delete_media:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->confirm_media_deletion_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/az;->delete_this_video_question:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->delete_media:I

    new-instance v2, Lcom/instagram/android/feed/a/a/ac;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/a/a/ac;-><init>(Lcom/instagram/android/feed/a/a/aa;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dont_delete:I

    new-instance v2, Lcom/instagram/android/feed/a/a/ab;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/a/a/ab;-><init>(Lcom/instagram/android/feed/a/a/aa;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 238
    :goto_1
    return-void

    .line 163
    :cond_0
    sget v0, Lcom/facebook/az;->delete_this_photo_question:I

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->share:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    new-instance v1, Lcom/instagram/sharelater/ShareLaterMedia;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/sharelater/ShareLaterMedia;-><init>(Lcom/instagram/feed/d/l;)V

    .line 188
    const-string v2, "ShareLaterMedia.SHARE_LATER_MEDIA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    new-instance v1, Lcom/instagram/base/a/a/a;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->f(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/creation/a/ar;

    invoke-direct {v2}, Lcom/instagram/android/creation/a/ar;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_1

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    const-string v0, "inappropriate"

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->g(Lcom/instagram/android/feed/a/a/x;)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/x;->h(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/g/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 198
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/util/ReportMediaUtil;->a(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    goto :goto_1

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->flag_reason_remove_from_popular:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    new-instance v0, Lcom/instagram/android/c/a/c;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/x;->i(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/an;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/feed/a/a/af;

    iget-object v5, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {v4, v5, v6}, Lcom/instagram/android/feed/a/a/af;-><init>(Lcom/instagram/android/feed/a/a/x;B)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/c;-><init>(Lcom/instagram/feed/d/l;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    .line 207
    invoke-virtual {v0}, Lcom/instagram/android/c/a/c;->g()V

    goto/16 :goto_1

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->add_people:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    const-string v1, "media_id"

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "media_url"

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/feed/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "people_tags"

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->V()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 215
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 219
    :cond_5
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->photo_options:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->i(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/people/c/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V

    goto/16 :goto_1

    .line 222
    :cond_6
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->copy_share_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 223
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->j(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/common/a/a/g;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/c/a/k;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/c/a/k;-><init>(Lcom/instagram/feed/d/l;)V

    new-instance v2, Lcom/instagram/android/feed/a/a/ad;

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {v2, v3, v6}, Lcom/instagram/android/feed/a/a/ad;-><init>(Lcom/instagram/android/feed/a/a/x;B)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/c/a/k;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/a;)V

    goto/16 :goto_1

    .line 229
    :cond_7
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->starred_hide_this:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 230
    new-instance v0, Lcom/instagram/android/feed/d/d;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/x;->k(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/android/feed/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v4}, Lcom/instagram/android/feed/a/a/x;->l(Lcom/instagram/android/feed/a/a/x;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/feed/d/d;-><init>(Landroid/content/Context;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/a;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/instagram/android/feed/d/d;->a()V

    .line 231
    const-string v0, "hide_button"

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->g(Lcom/instagram/android/feed/a/a/x;)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/x;->h(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/g/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    goto/16 :goto_1

    .line 236
    :cond_8
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->learn_more:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    new-instance v0, Lcom/instagram/android/feed/d/a;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->c(Lcom/instagram/android/feed/a/a/x;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/feed/d/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/android/feed/d/a;->a()V

    .line 238
    const-string v0, "learn_more_button"

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->g(Lcom/instagram/android/feed/a/a/x;)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/x;->h(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/g/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    goto/16 :goto_1

    .line 244
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Menu item click not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
