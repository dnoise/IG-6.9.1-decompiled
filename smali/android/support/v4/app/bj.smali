.class Landroid/support/v4/app/bj;
.super Landroid/support/v4/app/bi;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Landroid/support/v4/app/bi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ba;)Landroid/app/Notification;
    .locals 23
    .parameter

    .prologue
    .line 470
    new-instance v1, Landroid/support/v4/app/bw;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ba;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/ba;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/ba;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/ba;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/ba;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/ba;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/ba;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/ba;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/ba;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/ba;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ba;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ba;->u:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->v:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->q:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ba;->r:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->s:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v1 .. v22}, Landroid/support/v4/app/bw;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 476
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ba;->t:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/av;->a(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V

    .line 477
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;

    invoke-static {v1, v2}, Landroid/support/v4/app/av;->a(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V

    .line 478
    invoke-virtual {v1}, Landroid/support/v4/app/bw;->b()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public final a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 483
    invoke-static {p1}, Landroid/support/v4/app/bv;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
