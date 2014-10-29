.class public final enum Lcom/instagram/user/follow/h;
.super Ljava/lang/Enum;
.source "FollowButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/user/follow/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/user/follow/h;

.field public static final enum b:Lcom/instagram/user/follow/h;

.field private static final synthetic g:[Lcom/instagram/user/follow/h;


# instance fields
.field private c:Z

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/instagram/user/follow/h;

    const-string v1, "MEDIUM"

    sget v4, Lcom/facebook/au;->following_avatar:I

    sget v5, Lcom/facebook/au;->requested_avatar:I

    sget v6, Lcom/facebook/au;->follow_avatar:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/instagram/user/follow/h;-><init>(Ljava/lang/String;IZIII)V

    sput-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    .line 51
    new-instance v3, Lcom/instagram/user/follow/h;

    const-string v4, "LARGE"

    sget v7, Lcom/facebook/au;->following_icon:I

    sget v8, Lcom/facebook/au;->requested_icon:I

    sget v9, Lcom/facebook/au;->follow_icon:I

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/instagram/user/follow/h;-><init>(Ljava/lang/String;IZIII)V

    sput-object v3, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/user/follow/h;

    sget-object v1, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    aput-object v1, v0, v10

    sput-object v0, Lcom/instagram/user/follow/h;->g:[Lcom/instagram/user/follow/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-boolean p3, p0, Lcom/instagram/user/follow/h;->c:Z

    .line 61
    iput p4, p0, Lcom/instagram/user/follow/h;->d:I

    .line 62
    iput p5, p0, Lcom/instagram/user/follow/h;->e:I

    .line 63
    iput p6, p0, Lcom/instagram/user/follow/h;->f:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/user/follow/h;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/instagram/user/follow/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/h;

    return-object v0
.end method

.method public static values()[Lcom/instagram/user/follow/h;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/instagram/user/follow/h;->g:[Lcom/instagram/user/follow/h;

    invoke-virtual {v0}, [Lcom/instagram/user/follow/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/user/follow/h;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/c;)I
    .locals 2
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/instagram/user/follow/f;->a:[I

    invoke-virtual {p1}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    iget v0, p0, Lcom/instagram/user/follow/h;->d:I

    goto :goto_0

    .line 75
    :pswitch_1
    iget v0, p0, Lcom/instagram/user/follow/h;->e:I

    goto :goto_0

    .line 77
    :pswitch_2
    iget v0, p0, Lcom/instagram/user/follow/h;->f:I

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/instagram/user/follow/h;->c:Z

    return v0
.end method
