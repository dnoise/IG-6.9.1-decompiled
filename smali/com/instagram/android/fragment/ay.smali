.class final Lcom/instagram/android/fragment/ay;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/aw;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter
    .parameter "checkedId"

    .prologue
    .line 144
    if-nez p2, :cond_1

    .line 146
    new-instance v0, Lcom/instagram/share/b/h;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/share/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Lcom/instagram/share/b/h;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-lez p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    iget-object v1, p0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/aw;

    invoke-static {v1}, Lcom/instagram/android/fragment/aw;->c(Lcom/instagram/android/fragment/aw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/aw;

    invoke-static {v0}, Lcom/instagram/android/fragment/aw;->c(Lcom/instagram/android/fragment/aw;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/share/b/h;

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Lcom/instagram/share/b/h;)V

    goto :goto_0
.end method
