.class Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;
.super Ljava/lang/Object;
.source "NiotronVideoExoPlayer.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->-$$Nest$mgetAudioAttributes(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;Landroidx/media3/common/AudioAttributes;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->AudioAttributesChanged(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 3

    .line 204
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onAudioSessionIdChanged(I)V

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->AudioSessionIdChanged(J)V

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    invoke-virtual {p1, v1}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->AvailableCommandsChanged(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 258
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    .line 259
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->Cues()V

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 3

    .line 228
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    iget v1, p1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget v2, p1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    iget p1, p1, Landroidx/media3/common/DeviceInfo;->playbackType:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->DeviceInfoChanged(III)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 1

    .line 234
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->DeviceVolumeChanged(IZ)V

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->IsLoadingChanged(Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->IsPlayingChanged(Z)V

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 1

    .line 198
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->MaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 2

    .line 78
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->-$$Nest$mgetMediaMetadataDictionary(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;Landroidx/media3/common/MediaMetadata;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->MediaItemTransition(Lcom/google/appinventor/components/runtime/util/YailDictionary;Ljava/lang/String;I)V

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->-$$Nest$mgetMediaMetadataDictionary(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;Landroidx/media3/common/MediaMetadata;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->MediaMetadataChanged(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 1

    .line 264
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->-$$Nest$mgetMetadata(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;Landroidx/media3/common/Metadata;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->Metadata(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlaybackParametersChanged(FF)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlaybackStateChanged(I)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlayerError(Ljava/lang/String;I)V

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlayerErrorChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->-$$Nest$mgetMediaMetadataDictionary(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;Landroidx/media3/common/MediaMetadata;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PlaylistMetadataChanged(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 6

    .line 174
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    iget-wide v1, p1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v3, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->PositionDiscontinuity(JJI)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 252
    invoke-super {p0}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->RenderedFirstFrame()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->RepeatModeChanged(I)V

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 1

    .line 186
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->SeekBackIncrementChanged(J)V

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 1

    .line 192
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->SeekForwardIncrementChanged(J)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->ShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->SkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 1

    .line 246
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->SurfaceSizeChanged(II)V

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 2

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->TimelineChanged(III)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->-$$Nest$mgetTrackParameter(Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;Landroidx/media3/common/TrackSelectionParameters;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->TrackSelectionParametersChanged(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    .line 86
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->TracksChanged()V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 4

    .line 240
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    iget v2, p1, Landroidx/media3/common/VideoSize;->height:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    iget p1, p1, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->VideoSizeChanged(IIFI)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .line 216
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVideoExoPlayer;->VolumeChanged(F)V

    return-void
.end method
