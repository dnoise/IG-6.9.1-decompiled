.class final Lcom/instagram/android/creation/a/ac;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 278
    if-eqz p2, :cond_2

    .line 280
    iget-object v0, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->g(Lcom/instagram/android/creation/a/t;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->h(Lcom/instagram/android/creation/a/t;)V

    .line 284
    :cond_0
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/t;->n()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->photo_maps_dialog:I

    sget v3, Lcom/facebook/ba;->IgDialogFull:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    sget v1, Lcom/facebook/az;->ok:I

    invoke-virtual {v0, v1, v4}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v1

    .line 290
    sget v0, Lcom/facebook/av;->dialog_map_title:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->photo_map:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 292
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 294
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->o()Z

    .line 300
    :cond_1
    :goto_0
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/l/b/a;->b(Z)Z

    .line 301
    iget-object v0, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->i(Lcom/instagram/android/creation/a/t;)V

    .line 302
    iget-object v0, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->e(Lcom/instagram/android/creation/a/t;)Lcom/instagram/android/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v1}, Lcom/instagram/android/creation/a/t;->d(Lcom/instagram/android/creation/a/t;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    .line 303
    return-void

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0, v4}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)V

    .line 298
    iget-object v0, p0, Lcom/instagram/android/creation/a/ac;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v0, v4, v4}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;Ljava/lang/String;)V

    goto :goto_0
.end method
