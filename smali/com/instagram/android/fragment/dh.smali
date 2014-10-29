.class public final Lcom/instagram/android/fragment/dh;
.super Lcom/instagram/base/a/b;
.source "PreloadOptionsFragment.java"

# interfaces
.implements Lcom/instagram/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    sget v0, Lcom/facebook/aw;->fragment_preload_options:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 33
    sget v0, Lcom/facebook/av;->preload_options_radiogroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 34
    sget v1, Lcom/facebook/av;->preload_options_always:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 36
    sget v2, Lcom/facebook/av;->preload_options_wifi:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 39
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v4

    .line 40
    invoke-static {}, Lcom/instagram/creation/c/a;->c()Z

    move-result v3

    .line 41
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 42
    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 44
    new-instance v2, Lcom/instagram/android/fragment/di;

    invoke-direct {v2, p0, v4, v1}, Lcom/instagram/android/fragment/di;-><init>(Lcom/instagram/android/fragment/dh;Lcom/instagram/l/b/a;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 51
    sget v0, Lcom/facebook/av;->sound_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 52
    invoke-virtual {v4}, Lcom/instagram/l/b/a;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 53
    new-instance v1, Lcom/instagram/android/fragment/dj;

    invoke-direct {v1, p0, v4}, Lcom/instagram/android/fragment/dj;-><init>(Lcom/instagram/android/fragment/dh;Lcom/instagram/l/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    sget v1, Lcom/facebook/av;->sound_row:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/dk;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/fragment/dk;-><init>(Lcom/instagram/android/fragment/dh;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/facebook/av;->video_save_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 68
    invoke-virtual {v4}, Lcom/instagram/l/b/a;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 69
    new-instance v1, Lcom/instagram/android/fragment/dl;

    invoke-direct {v1, p0, v4}, Lcom/instagram/android/fragment/dl;-><init>(Lcom/instagram/android/fragment/dh;Lcom/instagram/l/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    sget v1, Lcom/facebook/av;->video_storage_row:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/dm;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/fragment/dm;-><init>(Lcom/instagram/android/fragment/dh;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 42
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    sget v0, Lcom/facebook/az;->videos:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 91
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Z)V

    .line 92
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "preload_options"

    return-object v0
.end method
